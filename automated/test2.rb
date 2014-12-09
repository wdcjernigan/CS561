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

repos = Dir.entries('compiled/').select {|entry| File.directory? File.join('compiled/',entry) and !(entry =='.' || entry == '..') }

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
	# logAndOutput "\n*** Testing " + repo + " ***"
	if File.exist?("compiled/"+repo+"/assets/www") then
		# logAndOutput "Good repo"

		# %x[cp -rf PhonGapApps/#{repo} compiled]

		compileError = false

		Dir.chdir("compiled/"+repo+"/assets/www"){
			jsFiles = []
			downloadedJSFiles = []
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
					end
					if node.key?("src") && node["src"].start_with?("http:") then
						downloadedJSFiles << node["src"]
					end
				end

			}

			jsFiles.uniq!
			if htmlFiles != nil && jsFiles != nil && downloadedJSFiles != nil then

				puts htmlFiles.length.to_s+", "+jsFiles.length.to_s+", "+downloadedJSFiles.length.to_s
			end
			
			# message = `java -jar ~/Closure/compiler.jar --js_output_file=out.js #{str}`
			# puts "stdout:"
			# puts stdout.gets
		}
		
	# else
		# logAndOutput "Bad repo"
	end

}
@log.close





