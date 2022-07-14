=begin
gets user input
changes user input to lowercase or downcase
checks if user_input includes string 's'
changes string 's' to  string 'th' with .gsub
=end

print "Enter your City!"
user_input = gets.chomp
user_input.downcase!
if user_input.include? "s" #checks for string includes 's'
  user_input.gsub!(/s/, "th") #changes string 's' to 'th'
  puts "transformed string: #{user_input}"
else 
  puts "There is no 's' in #{user_input}"
end