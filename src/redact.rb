=begin
Things to add
•	What could you do to make sure your redactor redacts a word regardless of whether it’s upper case or lower case?
•	How could you make your program take multiple, separate words to REDACT?
•	How might you make a new redacted string and save it as a variable, rather than just printing it to the console?

=end

# prompt user for input
puts "Type word: "
text = gets.chomp

puts "Word to redact: "
redact = gets.chomp

# split with delimiter (" ")
words = text.split(" ") #removes space

# .each 
words.each do |word|
  if word == redact
    print "REDACTED "
  else
    print word + " "
  end
end
