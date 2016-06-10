class Glider
  def lift(arg)
    puts "Rising"
  end
  
  def bank(arg)
    puts "Turning"
  end
  
  def method_missing(sym,*arg,&block)
    puts "method missing: #{sym} args: #{arg} block: #{block}"
  end
end

class Nomad
  def initialize(glider)
    @glider = glider
  end

  # we can write if eleif condtions also or this send (action)
  def do(action,arg=nil)
    @glider.send(action, arg=nil)
  end
 
end


nomad = Nomad.new(Glider.new)
puts nomad.class
puts nomad.instance_variables()
puts nomad.instance_methods(true)
nomad.do("lift")
nomad.do("bank")
nomad.do("throwit",1)





class Admin
  
  def depts  
    puts "Company Depts:HRdept,Network,Engineers"
  end  
  
  def callDepts(deptname)
    if deptname == "HRdept"
       puts  "Hi Welcome to HR Dept!!!"
    elsif deptname == "Network" 
      puts "Hi Welcome to Network Dept!!!"
     elsif deptname == "Engineers"
       puts "Hi Welcome to Engineers Dept!!!"
    end
    
    def method_missing(methodNmae,*args,&block)
      
      puts "method missing: #{methodNmae} args: #{args} block execution:#{block}"
    end
  end  
  
end  

admin=Admin.new
#admin.callDepts("HRdept")
admin.events(1,2,admin.callDepts("HRdept"))