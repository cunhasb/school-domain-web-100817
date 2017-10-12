# code here!
require 'pry'
class School
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(name,grade)
    # binding.pry
    @roster[grade] ||= []
    @roster[grade] << name
  end
  def grade(grade)
    @roster[grade]
  end

  def sort
      @roster.each_with_object(new_hash={}) do |keys|
       new_hash[keys[0]]=keys[1].sort
    end
  end
end
