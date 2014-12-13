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

# repos = Dir.entries('PhonGapApps/').select {|entry| File.directory? File.join('PhonGapApps/',entry) and !(entry =='.' || entry == '..') }

# File.open("repoList.txt", 'w') { |file| 
# 	repos.each {|repo| 
# 		file.write(repo+"\n") 
# 	}
# }
repos = ["com.parcye.hondcalc.apk+mod"]

# repos = ["63.apkMod",
# "com.iChemLabs.ChemDoodleMobile.apk+mod",
# "AncientWondersMod",
# "br.com.rommel.point.apk+mod",
# "32.apkMod",
# "com.parcye.hondcalc.apk+mod",
# "com.cobaltsign.readysetholiday.apk+mod",
# "com.groundroad.salecalc.apk+mod",
# "com.anders.clrpickr.apk+mod"]

# File.open("repoList.txt", 'r') { |file| 
# 	file.each_line {|line|
# 		repos << line.strip
# 	}
# }

repos.each {|repo|
	logAndOutput "\n*** Testing " + repo + " ***"
	if File.exist?(repo+"/assets/www") then
		logAndOutput "Good repo"

		%x[cp -rf #{repo} compiled/#{repo}]

		compileError = false

		Dir.chdir("compiled/"+repo+"/assets/www"){
			jsFiles = []
			htmlFiles = Dir["**/*.html"]
			htmlFiles.each { |htmlName|
				# puts htmlName
				f = File.open(htmlName)
				count = 0
				puts htmlName
				doc = Nokogiri::HTML(f)
				doc.css("script").each do |node|
					# if node.key?("src") && node["src"] != "cordova.js" && node["src"] != "phonegap.js" then
					if node.key?("src") then
						print "\t" + node["src"]
						if node["src"].start_with?("http") then
							print "[y/n]: "
							answer = gets.strip
							if answer[0] == 'y' then
								print "Filename: "
								answer = gets.strip
								
								print "[y/n] "
								answer2 = gets.strip
								
								if answer2 == 'y' then
									jsFiles << answer
									if count == 0 then
										node["src"] = "out.js"
									else
										node.remove
									end
									count += 1
								elsif answer2 == 'n' then
									node["src"] = answer
								end
							end 
						else
							print "[y/n]: "
							answer = gets.strip
							if answer[0] == 'y' then
								jsFiles << node["src"]
								if count == 0 then
									node["src"] = "out.js"
								else
									node.remove
								end
								count += 1
							end 
						end
					end
				end
				if count != 0 then
					# @log.write htmlName
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
			if jsFiles.length == 0 then
				next
			end
			jsFiles.uniq!
			str = jsFiles.join(" ")
			task = "java -jar ~/Closure/compiler.jar --compilation_level ADVANCED_OPTIMIZATIONS --js_output_file=out.js #{str}"
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
					puts lastLine
					p_line = lastLine.split
					# compileError = p_line[0] != "0" 
					stdin.close
					stdout.close
					stderr.close
					%x[rm #{str}]
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
			# %x[mv compiled/#{repo} error]
		else
			logAndOutput "GOOD COMPILE"
			# %x[cp -rf PhonGapApps/#{repo} corpus/normal]
			# %x[mv compiled/#{repo} corpus/compiled]
		end
	else
		logAndOutput "Bad repo"
	end

}
@log.close





