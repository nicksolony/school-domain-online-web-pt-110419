# code here!

class School
  attr_accessor :student_name
  attr_reader :school_name, :roster
  
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
    
  end
  
  def grade=(grade)
    @grade = []
    
  end
  
  def grade(grade)
    @roster[grade]
  end

  def add_student(student_name,grade)
    
    if @roster.include?(grade) 
        @roster[grade] << student_name
    else
        @roster[grade] ||= []
        @roster[grade] << student_name  
    end
  end
  
  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
      end
    sorted
    end
  end
    




