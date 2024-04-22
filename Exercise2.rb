a = [5,3,6,7,8,3,4,7,0,1,3,2,3,8]
tmp = []
a.each_with_index do |val, index|  
  if (val <= a[index + 1])
    tmp << val
  else
    tmp << val
    print tmp.inspect + ", " if tmp.length > 1
    tmp = []
  end  
  if (index + 1 == a.length - 1)  
    if (val <= a[index + 1])
      tmp << a[index + 1]
      print tmp.inspect
    end
    break
  end        
end     
