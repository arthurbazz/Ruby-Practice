print "What's your first name?" #get user input
first_name = gets.chomp #removes extra line added by rubby's gets
first_name.capitalize!

print "What's your last name?"
last_name = gets.chomp
last_name.capitalize! #! modifies values

print "What City are you from?"
city = gets.chomp
city.capitalize!

print "Enter you State  such as “NY” for New York?"
state = gets.chomp
state.upcase!

puts "
Your name is #{first_name } #{last_name},
Your City is #{city},
Your State is #{state}
"