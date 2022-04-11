require_relative 'person'

class Student < Person
  def initialize(name = "Unknown", age, classroom, parent_permission: true)
    super(name , age, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

remy = Student.new('Remy', 20, 'classroom')
p remy
p remy.play_hooky