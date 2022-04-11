class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(name = "Unknown", age, parent_permission: true)
    @id = Random.rand(1..10_000)
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

person1 = Person.new("James", 14, parent_permission: false)
person2 = Person.new("Johnson", 19, parent_permission: true)

puts "person1: #{person1.can_use_services?}"
puts "person2: #{person2.can_use_services?}"