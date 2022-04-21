require_relative 'person'

class Student < Person
  attr_reader :classroom
  attr_accessor :parent_permission

  def initialize(age, name = 'Unknown', parent_permission)
    super(age, name, parent_permission: parent_permission)
    # @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
