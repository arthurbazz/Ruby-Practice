class Computer
    @@users = {}
    #instance method
    def initialize(username, password)
      #instance variable
      @username = username
      @password = password
      @files = {}
      #class variable
      @@users[username] = password
    end
    #instance method or class method
    def create(filename)
      time = Time.now
      @files[filename] = time
      puts "A new file #{filename} was created by #{@username} at #{time}"
    end
  
    #class method
    def Computer.get_users
      return @@users
    end
  end
  
  # instance of a class
  my_computer = Computer.new("Arthur", "LovEForRuby1")
  your_computer = Computer.new("you", 56789)
  
  my_computer.create("groceries.txt")
  your_computer.create("todo.txt")
  
  puts "Users: #{Computer.get_users}"