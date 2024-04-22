badge = {
  '100001' => 'Nguyen Van A',
  '100002' => 'Nguyen Van B',
  '100003' => 'Nguyen Van C',
  '100004' => 'Nguyen Van D',
  '100005' => 'Nguyen Van E',
  '100006' => 'Nguyen Van F',
  '100007' => 'Nguyen Van G',
  '100008' => 'Nguyen Van H',
  '100009' => 'Nguyen Van I',
  '100010' => 'Nguyen Van J'
}

puts "Nhập ID hoặc name để lấy thông tin badge"
data = gets.chomp
tmp = 0
badge.each do |key, value| 
  if key == data || value == data 
    puts key + " - " + value
    tmp = 1
  end 
end
if tmp == 0
  puts "Ko có thông tin tương ứng"  
end  