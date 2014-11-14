apps = {}
devs = {}
users = {}


File.open("apps", "r") do |f|
  apps = Marshal.load(f)
end
File.open("devs", "r") do |f|
  devs = Marshal.load(f)
end
File.open("users", "r") do |f|
  users = Marshal.load(f)
end
count = []
count[0] = 0
count[1] = 0
count[2] = 0


apps.each {|devName, appsNames|
	devRepos = devs[devName]
	usernames = users[devName]
	i = 0
	appsNames.each { |appName, appRepos|
		# repos = devRepos & appRepos
		# repos.each { |repo|
		appRepos.each { |repo|
			if i == 0 then
				puts devName
				puts "\t"+appName
				i+=1
			end
			if usernames.include?(repo.split("/")[0]) then
				puts "\t"+"\t"+"*** https://github.com/"+repo+" ***"
				count[0]+=1
			elsif devRepos.include?(repo)
				puts "\t"+"\thttps://github.com/"+repo
				count[1]+=1
			else
				# puts "\t"+"\t"+repo
				count[2]+=1
			end
		}
	}
}

puts count