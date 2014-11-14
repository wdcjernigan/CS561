require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'net/https'
require 'uri'
 
apps = {}
devs = {}
users = {}


puts "*** Loaded All pages ***"

# File.open("apps", "r") do |f|
#   apps = Marshal.load(f)
# end
File.open("devs", "r") do |f|
  devs = Marshal.load(f)
end

puts "*** Saved ***"

devs.each {|devName, appsNames|
    puts devName
    users[devName] = []
    url = "https://github.com/search?q=#{devName.gsub(/\W/,"+")}&ref=searchresults&type=Users"
    begin
        doc = Nokogiri::HTML(open(url))

        doc.css(".user-list-info a em").each do |item|
            userName = item.text
            puts "\t"+userName
            users[devName] << userName
        end
    rescue Exception => e  
        # puts e.message  
        # puts e.backtrace.inspect
        puts "\t"+"\t"+"error" + "\t" + url
    end
    File.write('users', Marshal.dump(users))
    sleep(7.0)
}

File.write('users', Marshal.dump(users))