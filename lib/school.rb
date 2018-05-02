# code here!
class School
attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name='',grade=nil)
    #student = Student.new(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  def grade(name)
    roster[name]
  end
  def sort
    hash = {}
    roster.each do |grade, student|
      hash[grade] = student.sort
    end
    hash
  end

end

################################
# class Student
#   def initialize(name, grade)
#     @name = name
#     @grade = grade
#   end
# end
