require_relative 'person'

class Teacher < Person
  def initialize(age, specialization, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

teacher1 = Teacher.new(35, 'Physics', 'Joseph')
p teacher1
p teacher1.can_use_services?

teacher2 = Teacher.new(17, 'Mathematics', 'Joseph', parent_permission: false)
p teacher2
p teacher2.can_use_services?
