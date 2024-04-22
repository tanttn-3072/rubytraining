class Student
    attr_accessor :student_id, :name, :maths, :literature, :english

    def initialize(student_id, name, maths=0, literature=0, english=0)
      @student_id = student_id
      @name = name  
      @maths = maths
      @literature = literature
      @english = english 
    end
    def avg_score
      return (self.maths + self.literature + self.english)/3.to_f
    end    
end    

max = 0
puts "Nhập thông tin các học sinh bên dưới"
students = Hash.new
loop do
  puts "Nhập ID của học sinh: "  
  id = gets.chomp
  puts "Nhập tên của học sinh: "  
  name = gets.chomp
  puts "Nhập điểm toán: "    
  maths = gets.chomp.to_f
  puts "Nhập điểm văn: "
  literature = gets.chomp.to_f
  puts "Nhập điểm anh: "  
  english = gets.chomp.to_f
  student = Student.new(id, name, maths, literature, english)
  max = student.avg_score if (max < student.avg_score)
  students[student.name] = {:toan => student.maths, :van => student.literature, :anh => student.english, :avg => student.avg_score} 
  
  puts "Bạn có muốn nhập tiếp thông tin học sinh khác ko? (Y/N)"
  tmp = gets.chomp
  if tmp == 'N' || tmp == 'n'
    puts "Điểm trung bình cao nhất là #{max}"
    break
  end
end 
max = 0
students.each do |stu_key, stu_val|
  stu_val.each do |score_key, score_value|
    if score_key == :avg
      max = score_value if max < score_value  
    end    
  end
end
puts "Điểm trung bình cao nhất trong hash là #{max}"

