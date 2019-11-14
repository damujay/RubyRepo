    class BinarySearch
    def binary_Search(array,keyValue,low,high)
    
      index="Element not Found"
      mid=low+(high-low)/2
       
      while(low<=high)
	
	#puts "::::low:::#{low}:::high:::#{high}"
	#puts ":::::mid::::#{mid}::::array[mid]::::#{array[mid]}::::"
      
      if (array[mid]==keyValue)
	  index="Element found at position: #{mid}"
	  break;
	  
      elsif (array[mid]<keyValue)
	#p "less than"
	    low=mid+1
	  
	elsif (array[mid]>keyValue) 
	 # p "grater thsn"
	    high=mid-1
	end 
	  
	  mid=low+(high-low)/2
	  #puts "::::mid::22222::::#{mid}"
	  end 
	  return index
      end    
    end 

  

  p  array =[10,20,30,40,50,60,70,80,90]
  obj=BinarySearch.new
  puts obj.binary_Search(array,60,0,array.size-1)

	