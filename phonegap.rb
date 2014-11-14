require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'net/https'
require 'uri'
 
apps = {}
devs = {}

url = "http://phonegap.com/app/android/"
doc = Nokogiri::HTML(open(url))

doc.css(".app-list a").each do |item|
  appsName = item.at_css(".text-group .title").text
  devName = (item.at_css(".label").text).gsub("by ","")
  if ! apps.key?(devName) then
    apps[devName] = {appsName => []}
    devs[devName] = []
  else
    apps[devName][appsName] = []
  end
end


for i in 2..30 do
    url = "http://phonegap.com/app/android/page#{i}/"
    doc = Nokogiri::HTML(open(url))
    doc.css(".app-list a").each do |item|
        appsName = item.at_css(".text-group .title").text
        devName = (item.at_css(".label").text).gsub("by ","")
        if ! apps.key?(devName) then
            apps[devName] = {appsName => []}
            devs[devName] = []
        else
            apps[devName][appsName] = []
        end
    end
end

puts "*** Loaded All pages ***"

File.write('apps', Marshal.dump(apps))
File.write('devs', Marshal.dump(devs))

puts "*** Saved ***"

apps.each {|devName, appsNames|
    puts devName
    url = "https://github.com/search?q=#{devName.gsub(/\W/,"+")}&type=Repositories&ref=searchresults"
    begin
        doc = Nokogiri::HTML(open(url))

        doc.css(".repo-list-name a").each do |item|
            repoName = item.text
            puts "\t"+"\t"+repoName
            devs[devName] << repoName
        end
    rescue Exception => e  
        # puts e.message  
        # puts e.backtrace.inspect
        puts "\t"+"\t"+"error" + "\t" + url
    end
    File.write('apps', Marshal.dump(apps))
    File.write('devs', Marshal.dump(devs))
    sleep(7.0)
    appsNames.keys.each { |appsName|
        puts "\t"+appsName
        url = "https://github.com/search?q=#{appsName.gsub(/\W/,"+")}&type=Repositories&ref=searchresults"
        begin
            doc = Nokogiri::HTML(open(url))

            doc.css(".repo-list-name a").each do |item|
                repoName = item.text
                puts "\t"+"\t"+repoName
                apps[devName][appsName] << repoName
            end
        rescue Exception => e  
            # puts e.message  
            # puts e.backtrace.inspect
            puts "\t"+"\t"+"error" + "\t" + url
        end
        File.write('apps', Marshal.dump(apps))
        File.write('devs', Marshal.dump(devs))
        sleep(7.0)
    }
}

File.write('apps', Marshal.dump(apps))
File.write('devs', Marshal.dump(devs))
