class Employee
    attr_accessor :employee_id, :name, :working_hours, :overtime_hours, :department
    VALID_DEPARTMENT = ["dev", "qa", "bo", "infra"]
    BASE_SAL = 3000
    def initialize(employee_id, name, working_hours, overtime_hours = 0, department)
      if(VALID_DEPARTMENT.include?(department.downcase))
        @employee_id = employee_id
        @name = name
        @working_hours = working_hours
        if (department.downcase != "dev" && department.downcase != "qa" && overtime_hours != 0)
          raise ArgumentError, "You aren't allowed to request OT hours" 
        else
          @overtime_hours = overtime_hours
        end    
        @department = department
      else
        raise ArgumentError, "Unable to regconize department name"
      end  
    end

    def count_salary
      return self.working_hours*3000 + self.overtime_hours*3000*1.5
    end    

    def display_employee 
      puts "#{self.employee_id}     #{self.name}          #{self.working_hours}       #{self.overtime_hours}       #{self.department}       #{self.count_salary}"
    end    
end
employees = [
  Employee.new("1001", "ttnt", 90, 10, "dev"),
  Employee.new("1002", "nva", 280, 40, "qa"),
  Employee.new("1003", "nvb", 90, "bo"),
  Employee.new("1004", "nvc", 10, "infra"),
  Employee.new("1005", "ttnt", 1, "dev"),
  Employee.new("1006", "nva", 3, "qa"),
  Employee.new("1007", "nvb", 2, "bo"),
  Employee.new("1008", "nvc", 1, "infra"),
]
puts "ID       Name       Working hours   OT  Department  Total salary" 
employees.each {|employee| employee.display_employee }
puts "Những nhân viên có lương > 5000 là: "
employees.each {|employee| puts employee.employee_id if employee.count_salary > 5000}
employee = Employee.new("1009", "abcdef", 10, 10, "dev")
employees << employee
puts "List danh sách nhân viên sau khi thêm mới là: "
puts "ID       Name       Working hours   OT  Department  Total salary" 
employees.each {|employee| employee.display_employee }

