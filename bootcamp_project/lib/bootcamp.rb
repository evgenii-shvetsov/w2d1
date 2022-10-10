class Bootcamp

    def initialize(name, slogan, student_capacity)
      @name = name
      @slogan = slogan
      @student_capacity = student_capacity
      @teachers = []
      @students = []
      @grades = Hash.new {|h,k| h[k] = []}
    end
  
    def name
      @name
    end
   
    def slogan
      @slogan
    end
  
    def student_capacity
      @student_capacity
    end
  
    def teachers
      @teachers
    end
  
    def students
      @students
    end
  
    def grades
      @grades
    end
  
    def hire(str)
      @teachers << str
    end
  
    def enroll(str)
      if  @students.length < @student_capacity
          @students << str
          return true
      elsif @students.length == @student_capacity
          return false
      end
    end
  
    def enrolled?(str)
      @students.include?(str)
    end  
    
    
    def student_to_teacher_ratio
      @students.length / @teachers.length
    end
  
    def add_grade(student, grade)
      if enrolled?(student)
          grades[student] << grade
          return true
      else
          return false
      end
    end
  
    def num_grades(student)
      grades[student].length
    end  
  
    def average_grade(student)
      if num_grades(student) == 0
          nil
      else
          grades[student].sum / num_grades(student)
      end
    end
  
  
  
  
  
  
  end
  