
#movies Hash
movies = {
  fast_and_furious: 4,
  power: 5,
  for_life: 3
}

puts "What do you want to do (add, update, display, delete) movie?"

choice = gets.chomp
case choice
  when "add"
    #movie title
    puts "Enter move you want to add!"
    title = gets.chomp.to_sym

  #check movie dose not exist
  if movies[title.to_sym].nil?

    #movie rating
    puts "Enter your movie rating (1-5)?"
    rating = gets.chomp.to_i

    #add to hash
    movies[title] = rating
    puts "#{title} has been added with a rating of #{rating}!"

    #if movie exists then prompt user
  else
    puts "Error! The movie already exists!. Its rating is #{movies[title.to_sym]}"
  end

  when "update"
    #update movie title
    puts "Enter movie you want to update!"
    title = gets.chomp.to_sym

  #check movie dose not exist
  if movies[title.to_sym].nil?
    puts "Error #{title} not found"
  else 
    #movie rating
    puts "Enter new movie rating (1-5)?"
    rating = gets.chomp.to_i
   #add to hash
    movies[title] = rating
    puts "#{title} has been updated with a rating of #{rating}!"
  end

  when "display"
    movies.each {|title, rating| 
      puts "#{title}: #{rating}"}
  when "delete"
    #movie title to delete
    puts "Enter movie you want to delete!"
    title = gets.chomp.to_sym

  #check movie dose not exist
  if movies[title.to_sym].nil?
     puts "Movie #{title} not in database!"
  else
    movies.delete(title)
    puts "Movie #{title} has been deleted!"  
  end
end

