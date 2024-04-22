require 'date'

puts "Nhập ngày vào làm việc theo format mm/dd/yyyy"
fwd = Date.strptime(gets.chomp, "%m/%d/%Y")
day_off = 0
working_year = (Date.today - fwd).to_i/ 365
if (fwd.year < Date.today.year)
  if working_year == 4
    day_off = 13
  elsif working_year >= 5
    day_off = 14
  else
    day_off = 12     
  end        
else
  if fwd.day< 10
    day_off = 12 - fwd.month + 1
  else
    day_off = 12 - fwd.month + 0.5
  end    
end
puts "Số ngày nghỉ phép: #{day_off}"