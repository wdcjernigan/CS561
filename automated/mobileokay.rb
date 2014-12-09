require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'net/https'
require 'uri'

@log = File.open("MobileOKresults.log", 'a')

def logAndOutput s
	@log.write(s)
	@log.write("\t")
	puts s
end

@log2 = File.open("MobileOKresultsDetails.log", 'a')

def logAndOutput2 s
	@log2.write(s)
	@log2.write("\t")
	puts s
end

def ignoreError
	begin
		return yield
	rescue
		return ""
	end
end

repos = []

File.open("repoList.txt", 'r') { |file| 
	file.each_line {|line|
		repos << line.strip
	}
}

repos.each {|repo|

	fixedName = repo.gsub("+","%2B")
	url = "http://validator.w3.org/mobile/check?task=201411242121129.mobile2&docAddr=http%3A%2F%2Fweb.engr.oregonstate.edu%2F~lesliew%2Fnormal%2F#{fixedName}%2Fassets%2Fwww%2F"
	doc = Nokogiri::HTML(open(url))

	logAndOutput (ignoreError {repo})
	logAndOutput (ignoreError {"normal"})
	logAndOutput (ignoreError {doc.css(".advin")[0].text})
	logAndOutput (ignoreError {doc.css("#score strong")[0].text})
	logAndOutput (ignoreError {doc.css("#severity .noborder:nth-child(1) .lastUnit")[0].text})
	logAndOutput (ignoreError {doc.css("#severity .noborder:nth-child(2) .lastUnit")[0].text})
	logAndOutput (ignoreError {doc.css("#severity .noborder:nth-child(3) .lastUnit")[0].text})
	logAndOutput (ignoreError {doc.css("#severity .noborder:nth-child(4) .lastUnit")[0].text})
	logAndOutput (ignoreError {doc.css("#category .noborder:nth-child(1) .lastUnit")[0].text})
	logAndOutput (ignoreError {doc.css("#category .noborder:nth-child(2) .lastUnit")[0].text})
	logAndOutput (ignoreError {doc.css("#category .noborder:nth-child(3) .lastUnit")[0].text})
	logAndOutput (ignoreError {doc.css("#category .noborder:nth-child(4) .lastUnit")[0].text})
	@log.write "\n"

	doc.css("#details .msg").each { |item|
		logAndOutput2 (ignoreError {repo})
		logAndOutput2 (ignoreError {"normal"})
		logAndOutput2 (ignoreError {item.at_css(".severity img")["alt"]})
		logAndOutput2 (ignoreError {item.at_css(".cat img")["alt"]})
		logAndOutput2 (ignoreError {item.at_css(".desc").text})
		logAndOutput2 (ignoreError {item.at_css(".bp a").text})
	
		@log2.write "\n"
	}

	sleep(10.0)
	
	fixedName = repo.gsub("+","%2B")
	url = "http://validator.w3.org/mobile/check?task=201411242121129.mobile2&docAddr=http%3A%2F%2Fweb.engr.oregonstate.edu%2F~lesliew%2Fcompiled%2F#{fixedName}%2Fassets%2Fwww%2F"
	doc = Nokogiri::HTML(open(url))

	logAndOutput (ignoreError {repo})
	logAndOutput (ignoreError {"compiled"})
	logAndOutput (ignoreError {doc.css(".advin")[0].text})
	logAndOutput (ignoreError {doc.css("#score strong")[0].text})
	logAndOutput (ignoreError {doc.css("#severity .noborder:nth-child(1) .lastUnit")[0].text})
	logAndOutput (ignoreError {doc.css("#severity .noborder:nth-child(2) .lastUnit")[0].text})
	logAndOutput (ignoreError {doc.css("#severity .noborder:nth-child(3) .lastUnit")[0].text})
	logAndOutput (ignoreError {doc.css("#severity .noborder:nth-child(4) .lastUnit")[0].text})
	logAndOutput (ignoreError {doc.css("#category .noborder:nth-child(1) .lastUnit")[0].text})
	logAndOutput (ignoreError {doc.css("#category .noborder:nth-child(2) .lastUnit")[0].text})
	logAndOutput (ignoreError {doc.css("#category .noborder:nth-child(3) .lastUnit")[0].text})
	logAndOutput (ignoreError {doc.css("#category .noborder:nth-child(4) .lastUnit")[0].text})
	@log.write "\n"

	doc.css("#details .msg").each { |item|
		begin
			logAndOutput2 (ignoreError {repo})
			logAndOutput2 (ignoreError {"compiled"})
			logAndOutput2 (ignoreError {item.at_css(".severity img")["alt"]})
			logAndOutput2 (ignoreError {item.at_css(".cat img")["alt"]})
			logAndOutput2 (ignoreError {item.at_css(".desc").text})
			logAndOutput2 (ignoreError {item.at_css(".bp a").text})

		rescue

		end
		@log2.write "\n"
	}

	sleep(10.0)

}




















# puts doc.css("#details .severity img")[0]





#details .severity img