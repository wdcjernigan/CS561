require 'rubygems'
require 'nokogiri'
# require 'open-uri'
# require 'net/http'
# require 'net/https'
# require 'uri'

projectName = ARGV[0]

%x[cp -rf normal/#{projectName} compiled]

# f = File.open("compiled/#{projectName}/index.html")
# doc = Nokogiri::XML(f)
# # doc.xpath('//html/body/script').each do |node|
# str = ""
# doc.css("script").each do |node|
# 	str += node["src"] + " "
# end
# f.close
# puts str
indexLocation = ""
if File.exist?("compiled/#{projectName}/index.html") then
	indexLocation = "compiled/#{projectName}"
elsif File.exist?("compiled/#{projectName}/www/index.html")
	indexLocation = "compiled/#{projectName}/www"
else
	puts "Unable to find index.html"
	return
end
Dir.chdir(indexLocation){
	f = File.open("index.html")
	doc = Nokogiri::XML(f)
	str = ""
	doc.css("script").each do |node|
		if node["src"] != "cordova.js" then
			str += node["src"] + " "
			node.remove
		end
	end
	f.close
	puts str
	%x[java -jar ~/Closure/compiler.jar --js_output_file=out.js #{str}]
	s = Nokogiri::XML::Node.new "script", doc
	s["src"] = "out.js"

	doc.css("body")[0].add_child(s)

	puts doc.to_html 

	File.open("index.html", 'w') { |file| file.write(doc.to_html) }

	%x[rm #{str}]

}

