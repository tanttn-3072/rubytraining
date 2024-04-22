print "Nhập chuỗi: "
str = gets.chomp
print "1. Chuỗi sau khi cắt khoảng trống thừa: "
a = str.split(' ')
str = ''
a.each {|val| str += val + ' '}
puts str.rstrip

print "2. Viết hoa các chữ cái đầu: "
str = ''
a.each {|val| str += val.capitalize + ' ' }
puts str.rstrip

print "3. Những từ còn lại trong họ tên lấy ký tự đầu tiên, viết hoa ký tự đó: "
str = ''
str += a.last.capitalize
a.each_with_index do |val, index| 
    break if index == a.length - 1
    str += val[0].capitalize
end
puts str