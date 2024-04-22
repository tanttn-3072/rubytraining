params = {
  "supplier"=>{
    "name"=>"Test lay params", 
    "tax_number"=>"0110254854", 
    "address"=>"Tokyo", 
    "supplier_type"=>"personal",         
    "bank_accounts"=>{
      "0"=>{
        "account"=>"847445", 
        "branch_name"=>"VCB"
      }, 
      "1"=>{
        "account"=>"985784", 
        "branch_name"=>"ACB", 
        "_destroy"=>"false"
      }
    }
  }
}
puts "Lấy ra branch_name của bank_account có key = 1 "
params.each do |sup, sup_val|
  sup_val.each do |item, item_val|
    if item == "bank_accounts"
      item_val.each do |key, key_val|
        if key == "1"
          key_val.each do |info, info_val|
            puts info_val if info == "branch_name"
          end    
        end    
      end 
    end    
  end  
end    
puts "Thêm type = personal cho supplier"
params["supplier"].merge!("type" => "personal")
puts params