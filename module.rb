module CommonGame
  
  def kabadi
    puts "and also like kabadi" 
  end
end

class Play
  include CommonGame  
  def cricket
    puts "DHONI:I like cricket"
  end  
end

class Play2 < Play
 # include CommonGame
  def football
    puts "MESSY:I like football"
  end
end

puts Play.new.cricket
Play.new.kabadi
puts "-----------------------"
puts Play2.new.football
Play2.new.kabadil





puts "----module methods as instance methods----------"

module Greetings
  def hello
    puts "Hello! Welcome to the Party"
  end
  
  def hrdept
    puts "HR:Welcome Everyone"
  end
 
  def enggineers
    puts "Hey thnks,we are enjoying"
  end
  
end 

module Sendoff  
  def bye
    puts "Thanks for coming and bye"    
  end 
end  

class Admin
  include Greetings,Sendoff
end

admin = Admin.new
admin.hello
admin.hrdept
admin.enggineers
admin.bye


puts "----------Using Modules methods as Class Methods----------"

class AdminCls
    extend Greetings,Sendoff
end  

AdminCls.hello
AdminCls.hrdept
AdminCls.enggineers
AdminCls.bye
