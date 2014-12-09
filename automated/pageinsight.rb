require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'net/https'
require 'uri'


@log = File.open("pageSpeedresults.csv", 'a')

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

File.open("repoList2.txt", 'r') { |file| 
	file.each_line {|line|
		repos << line.strip
	}
}

repos.each {|repo|

	fixedName = repo.gsub("+","%2B")
	url = "http://developers.google.com/speed/pagespeed/insights/?url=http%3A%2F%2Fweb.engr.oregonstate.edu%2F~lesliew%2Fnormal%2F#{fixedName}%2Fassets%2Fwww%2F"

	require 'watir'

	browser = Watir::Browser.new
	browser.goto url

	sleep(10.0)

	doc = Nokogiri::HTML.parse(browser.html)
	logAndOutput repo
	logAndOutput "normal"
	doc.css(".result-group").each { |item|
		logAndOutput item.at_css(".value").text.gsub(" / 100", "")
	}
	@log.write "\n"
	browser.close

	sleep(7.0)

	fixedName = repo.gsub("+","%2B")
	url = "http://developers.google.com/speed/pagespeed/insights/?url=http%3A%2F%2Fweb.engr.oregonstate.edu%2F~lesliew%2Fcompiled%2F#{fixedName}%2Fassets%2Fwww%2F"

	require 'watir'

	browser = Watir::Browser.new
	browser.goto url

	sleep(10.0)

	doc = Nokogiri::HTML.parse(browser.html)

	logAndOutput repo
	logAndOutput "compiled"
	doc.css(".result-group").each { |item|
		logAndOutput item.at_css(".value").text.gsub(" / 100", "")
	}
	@log.write "\n"
	browser.close
	sleep(10.0)

}
