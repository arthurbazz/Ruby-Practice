puts "Enter text pls!"
text = gets.chomp

words = text.split(" ") # transforms text into an array.
# frequencies Hash with default value 0
frequencies = Hash.new(0)
# Iterating over array
words.each do |word|
  frequencies[word] += 1
end
frequencies = frequencies.sort_by do |key, value| 
  value
end
frequencies.reverse!
frequencies.each do |word, frequency| 
  puts word + " " + frequency.to_s #converts value from a number to a string using .to_s 
end
