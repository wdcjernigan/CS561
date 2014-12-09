require 'rubygems'
require 'nokogiri'
require 'open3'
require 'timeout'
# require 'open-uri'
# require 'net/http'
# require 'net/https'
# require 'uri'


# puts Dir["test/*"]

@log = File.open("results.log", 'a')

def logAndOutput s
	@log.write(s)
	puts s
end

repos = Dir.entries('normal/').select {|entry| File.directory? File.join('normal/',entry) and !(entry =='.' || entry == '..') }

File.open("repoList.txt", 'w') { |file| 
	repos.each {|repo| 
		file.write(repo+"\n") 
	}
}

repos = []

File.open("repoList.txt", 'r') { |file| 
	file.each_line {|line|
		repos << line.strip
	}
}

repos.each {|repo|
	logAndOutput "\n*** Testing " + repo + " ***"
	if File.exist?("normal/"+repo+"/assets/www") then
		logAndOutput "Good repo"

		%x[cp -rf normal/#{repo} compiled]

		compileError = false

		Dir.chdir("compiled/"+repo+"/assets/www"){
			jsFiles = []
			htmlFiles = Dir["**/*.html"]
			htmlFiles.each { |htmlName|
				# puts htmlName
				f = File.open(htmlName)
				count = 0
				doc = Nokogiri::HTML(f)
				doc.css("script").each do |node|
					# if node.key?("src") && node["src"] != "cordova.js" && node["src"] != "phonegap.js" then
					if node.key?("src") && ! node["src"].start_with?("http:") then
						jsFiles << node["src"]
						if count == 0 then
							node["src"] = "out.js"
						else
							node.remove
						end
						count += 1
					end
				end
				if count != 0 then
					@log.write htmlName
					# s = Nokogiri::XML::Node.new "script", doc
					# s["src"] = "out.js"
					# s["type"] = "text/javascript"
					# s2 = Nokogiri::XML::Node.new "script", doc
					# s2["src"] = "out.js"
					# s2["type"] = "text/javascript"

					# doc.css("head")[0].add_child(s)
					# doc.css("body")[0].add_child(s2)

					# puts doc.to_html
					File.open(htmlName, 'w') { |file| file.write(doc.to_html) }

				end 
				f.close

			}

			jsFiles.uniq!
			str = jsFiles.join(" ")
			task = "java -jar ~/Closure/compiler.jar --js_output_file=out.js #{str}"
			@log.write "Running #{task}"
			begin
		    	Timeout::timeout(60) {
					stdin, stdout, stderr = Open3.popen3(task)
					@log.write "stderr:"
					lastLine = ""
					stderr.each_line { |line|
						@log.write line
						lastLine = line
					}
					%x[rm #{str}]
					puts lastLine
					p_line = lastLine.split
					compileError = p_line[0] != "0" 
					stdin.close
					stdout.close
					stderr.close
				}
		    rescue Timeout::Error => e
		    	logAndOutput "Timeout"
		      	compileError = true
		    end
			# message = `java -jar ~/Closure/compiler.jar --js_output_file=out.js #{str}`
			# puts "stdout:"
			# puts stdout.gets
		}
		if compileError
			logAndOutput "ERROR"
			%x[mv compiled/#{repo} error]
		else
			logAndOutput "GOOD COMPILE"
			# %x[cp -rf normal/#{repo} corpus/normal]
			# %x[mv compiled/#{repo} corpus/compiled]
		end
	else
		logAndOutput "Bad repo"
	end

}
@log.close





