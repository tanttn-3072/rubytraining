module Price
  def min_ticket_need_sell
    puts "You need to sell at least 100 tickets to fly"
  end    
end    

class Plane
   include Price 
   def flight_attendant(number)
     puts "In flight have #{number} attendants"
   end  
   def self.max_fly_speed
     puts "913 km/h"
   end 
end    

vietnam_airline = Plane.new
vietnam_airline.flight_attendant(10)
vietjet = Plane.new
vietjet.flight_attendant(20)
print "Tốc độ bay tối đa của Plane là: "
Plane.max_fly_speed
vietnam_airline.min_ticket_need_sell
vietjet.min_ticket_need_sell

