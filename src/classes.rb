class Message 
    def initialize(from, to)
      @from = from
      @to = to
      #class variable increment
      @@messages_sent += 1
    end
  
    #class variable
    @@messages_sent = 0
  end
  
  #global variable
  my_message = Message.new('JavaScript', 'Ruby') 
  
  #class Email
  class Email < Message
    def initialize(from, to)
      super
    end
  end
  