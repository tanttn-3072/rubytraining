a = Array.new
puts "Nhập các phần tử trong mảng (nhập kí tự chữ để dừng)" 
loop do
  num = gets.chomp  
  break if (!num.match?(/^\d+$/))
  a << num.to_i
end   

loop do
  puts "Mời bạn chọn 1 trong 6 "  
  puts "1. hiển thị mảng vừa nhập"
  puts "2. hiển thị giá trị nhỏ nhất của mảng ra màn hình."
  puts "3. tính giá trị trung bình của mảng"
  puts "4. tính tổng của mảng"
  puts "5. tìm các phần tử có giá trị > 10"
  puts "6. tìm phần tử đầu tiên có giá trị > 10"
  tmp = gets.chomp
  case tmp
  when '1'
    puts a.inspect
  when '2'
    puts "Giá trị nhỏ nhất của mảng trên là #{a.min}"
  when '3'
    puts "Giá trị trung bình của mảng trên là #{a.sum/(a.length.to_f)}"    
  when '4'
    puts "Tổng của mảng trên là #{a.inject{ |sum, e| sum += e}}"      
  when '5'
    puts a.select{ |e| e >10 }.inspect
  when '6'
    puts "Phần tử đầu tiên có giá trị > 10 là #{a.detect{ |e| e >10 }}"  
  else
    puts "Chỉ lựa chọn từ 1 đến 6"
  end    

  if tmp.match?(/^\d+$/) && tmp.to_i <=6
    puts "Bạn có muốn tiếp tục? (Y/N)"
    tmp = gets.chomp
    break if tmp == 'N' || tmp == 'n'
  end
end    






# 