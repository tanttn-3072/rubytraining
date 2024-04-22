a = [{"Hanoi": ["CauGiay", "vung xanh"] },  {"Hanoi" => ["LongBien", "vung do"]},  {"Hanoi" => ["Metri", "vung xanh"]}]
result = Hash.new
a.each do |hash|
  hash.values.each do |quan, vung|
    result[vung] ||= []
    result[vung] << "#{quan} - #{hash.keys[0]}"
  end    
end    
puts result
