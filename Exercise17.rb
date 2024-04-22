result = Hash.new
a = gets.chomp.split(' ')
n = a[0]
a.shift
a.each { |item| result[item] = a.count(item) } 
 
puts result.sort_by {|key, val| val}.inspect
