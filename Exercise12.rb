a = []
puts "Nhập lần lượt 5 phần tử của mảng"
tmp = 0
while tmp < 5
  a << gets.chomp.to_i  
  tmp += 1
end       
puts a.inspect
print "Tổng các phần tử trong mảng: "
puts a.sum
puts "Mảng có lũy thừa tương ứng với từng phần tử"
proc = Proc.new {|x| (x==6 || x==7)? x: x*x }
tmp = a.map(&proc)
puts tmp.inspect
