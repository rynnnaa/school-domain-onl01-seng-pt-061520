class School
  attr_accessor :name, :roster
  
  def initialize(roster)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster.keys.include?(grade)
    roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    sort = {}
    @roster.each do |grade, name|
      sort[grade]=name.sort!
    end
    sort
  end
end