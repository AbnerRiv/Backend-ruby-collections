name = []
puts "Let me greet you!"
puts "What's your first name?"
f_name = gets.chomp
name << f_name

puts "What's your middle name?"
m_name = gets.chomp
name << m_name

puts "What's your last name?"
l_name = gets.chomp
name << l_name

print "Hello, "
name.each {|item| print item + " "} 
print "!\n"