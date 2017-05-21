puts "Hello World"
puts "I'm in the #{Dir.pwd} directory!"

# grab and then list all items in the TestDir.
TestDir = Dir.entries("./TestDir")
puts "Here's whats in the TestDir now #{TestDir}"

# method for splitting and transforming version numbers
def version_conversion(ver, separator = '.')
	ver_simple = ver.split(separator)
	ver_simple.map { |i| i.to_s.sub!(/(^0)/, '') }
	return ver_simple.join(separator)
end

# iterate through each file in "TestDir" and evaluate.
Dir.foreach("TestDir") { |f| 
	if File.directory?(f) == false
		puts "#{f} should be changed to: #{version_conversion(f)}"
	end
}

#File.rename(oldName, newName)

# testing the module splitter @ https://www.sitepoint.com/functional-programming-techniques-with-ruby-part-i/
def module_split(module_path, separator = "::")
  modules = module_path.split(separator)
  modules.length.downto(1).map { |n| modules.first(n).join(separator) }
end
#puts module_split("W::X::Y::Z")

# testing the downto() method
3.downto(0) { |i| print i, "..." }
print " Ready or not here I come!\n"

