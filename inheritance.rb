class GrandFather
  attr_accessor :gfProp
  
  def initialize(property)  
  @gfProp=property 
 end 
 
  def property(msg)
     puts "#{msg} : $#{@gfProp}"
  end  
  
  def total
    gfProp
  end
end

class Father < GrandFather
  attr_accessor :fProp
  def initialize(property)
    @fProp=property
  end  
  
  def fatherProperty(msg)
    puts "#{msg} : $#{@fProp}"
  end  
 
  def total
      @fProp+super
  end  
  
end  

class Son < Father

  def initialize(property)
  @sProp=property
  end
  
  def sonProperty(msg)
     puts "#{msg} : $#{@sProp}"
  end  
  
  def total
     @sProp+super
  end  
 
end  


gfObj=GrandFather.new(1000)
puts gfObj.property("Grand Father Property value:")

fObj=Father.new(1500)
fObj.gfProp=gfObj.gfProp

puts fObj.fatherProperty("Father Property value:")

sObj=Son.new(2000)
puts sObj.sonProperty("Son Property:")

sObj.fProp=fObj.fProp
sObj.gfProp=gfObj.gfProp


puts "Total Property Value:$#{sObj.total}"







