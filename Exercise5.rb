puts "Mời bạn nhập chuỗi"
str = gets.chomp
puts str.reverse
puts str.gsub(/\s/, '')
email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
if (str.match?(email_regex))
  puts "Chuỗi vừa nhập là email"   
else
  puts "Chuỗi vừa nhập ko phải là email"    
end  