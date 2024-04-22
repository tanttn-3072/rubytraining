require 'time'

def input_time(time)
  begin
    return Time.parse(time)
  rescue ArgumentError
    return -1
  end
end

puts "Nhập giờ check-in theo format (hh:mm)"
start = input_time(gets.chomp)
puts "Nhập giờ check-out theo format (hh:mm)"
due = input_time(gets.chomp)
if (start != -1 && due != -1)
  if (due > start)  
    ot = (due - start)/3600.to_f
    lunch = "N"
    dinner = "N"
    if (ot > 5) && (due >= Time.parse("13:00")) && (start <= Time.parse("12:00"))
      lunch = "Y" 
    end  
    if (ot > 3) && (due >= Time.parse("21:00")) && (start <= Time.parse("21:00"))
      dinner = "Y"
    end     
    puts "OT: #{ot}, Lunch: #{lunch}, Dinner: #{dinner}"
  else
    puts "Cú pháp ko hợp lệ, nhập lại!"
  end    
else    
  puts "Cú pháp ko hợp lệ, nhập lại!"
end