puts "Hello World"
puts "I'm in the #{Dir.pwd} directory!"

TestDir = Dir.entries("./TestDir")
puts "Here's whats in the TestDir now #{TestDir}"

Dir.foreach("TestDir") { |f| 
	if File.directory?(f) == false
		puts "#{f} should be changed to: "
	end
}

#File.rename(oldName, newName)