require_relative 'person.rb'

class Teacher < Person
  def initialize(name = "Unknown", age, specialization, parent_permission: true)
    super(name , age, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

teacher1 = Teacher.new('Joseph', 35, 'Physics')
p teacher1
p teacher1.can_use_services?

teacher2 = Teacher.new('Joseph', 17, 'Mathematics', parent_permission: false)
p teacher2
p teacher2.can_use_services?