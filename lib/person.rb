class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..10_000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end

person1 = Person.new(14, 'James', parent_permission: false)
person2 = Person.new(29, 'Johnson', parent_permission: true)

puts "person1: #{person1.can_use_services?}"
puts "person2: #{person2.can_use_services?}"
