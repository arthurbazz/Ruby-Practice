def alphabetize(arr, rev=false) 
    # code goes in here
    if rev 
      arr.sort! {|item1, item2| item2 <=> item1} 
    else 
      arr.sort! {|item1, item2| item1 <=> item2 } 
    end
  end
  
  numbers = [2008, 5, 1, 3, 8, 458, 56, 897]
  
  # calling alphabetize method with numbers array 
  puts "1-highest_num: #{alphabetize(numbers)}"
  puts "highest_num-1: #{alphabetize(numbers, true)}"
