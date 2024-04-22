a =  [2,20,1,"/a","/c"]
b = [1,"/c/a/","/b","/a",50]
c = 1

print "1. Mảng b có chứa c ko? "
puts b.any?(c)

print "2. Lấy tất cả phần tử có trong 2 mảng a và b: "
def get_all_common_elements(a, b)  
  tmp = []  
  # a.each do |item|
  #   if(b.any?(item))
  #     tmp << item  
  #   end  
  # end    
  a.each {|item| tmp << item if b.any?(item)}
  return tmp

end    
puts get_all_common_elements(a, b).inspect

print "3. Lấy tất cả phần tử chỉ có trong a ko có trong b "
def get_elements_from_a(a, b)  
  return a - b
end    
puts get_elements_from_a(a, get_all_common_elements(a, b)).inspect