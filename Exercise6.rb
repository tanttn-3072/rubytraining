require 'json'
require 'csv'

print "Bạn muốn kiểm tra thông tin từ file json hay file CSV? (Ấn 1 cho JSON và 2 cho CSV): "
tmp = gets.chomp.to_i
puts "Nhập thông tin để đăng nhập"
print "Nhập tên user: "
username = gets.chomp
print "Nhập password: "
password = gets.chomp
if tmp == 1
  file_path = "user_info.json"
  json_data = File.read(file_path)
  user_info = JSON.parse(json_data)
  user = {}
  user_info.each do |item|
    user = item if item["user"] == username && item["password"] == password  
  end    
  if user.empty?
    puts "user ko tồn tại vui lòng nhập user khác"  
  else
    if user["admin"] == 1
        puts "Chào mừng bạn đến với phần mềm, bạn được quyền thao tác như sau:"
        puts "- Thêm, sửa, xoá, search info máy tính"
        puts "- Thêm sửa xoá user"
    else
        puts "Chào mừng bạn đến với phần mềm, bạn được quyền thao tác như sau:"
        puts "- Search info máy tính"
    end  
  end      
else
  file_path = "user_info.csv"
  user = []
  CSV.foreach(file_path) do |row|
    user = row if row[0] == username && row[1] == password    
  end
  if user.empty?
    puts "user ko tồn tại vui lòng nhập user khác"  
  else
    if user[2] == "1"
        puts "Chào mừng bạn đến với phần mềm, bạn được quyền thao tác như sau:"
        puts "- Thêm, sửa, xoá, search info máy tính"
        puts "- Thêm sửa xoá user"
    else
        puts "Chào mừng bạn đến với phần mềm, bạn được quyền thao tác như sau:"
        puts "- Search info máy tính"
    end  
  end  
end