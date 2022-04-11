class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(id, name = "Unknown", age, parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    is_of_age? || @parent_permission
  end

  private

  def is_of_age?
    @age >= 18
  end
end

person1 = Person.new(1, "James", 14, parent_permission: false)
p person1
p person1.can_use_services?

person2 = Person.new(2, "Johnson", 19, parent_permission: true)
p person2
p person2.can_use_services?