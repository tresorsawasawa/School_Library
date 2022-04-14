require_relative 'lib/capitalize_decorator'
require_relative 'lib/trimmer_decorator'
require_relative 'lib/classroom'
require_relative 'lib/student'
require_relative 'lib/person'
require_relative 'lib/rental'
require_relative 'lib/book'

person = Person.new(22, 'maximilianus')
p person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
p capitalized_person.correct_name
capitalized_person = TrimmerDecorator.new(capitalized_person)
p capitalized_person.correct_name

puts '-------------------------------------------------------------------------------------------------'

classroom1 = Classroom.new('Year_1_computer_science')

jenny = Student.new(23, nil, 'Jenny')
james = Student.new(19, nil, 'James')
john = Student.new(20, nil, 'John')

classroom1.add_student(jenny)
classroom1.add_student(james)
classroom1.add_student(john)

classroom1.students.each do |student|
  puts "id: #{student.id}, name: #{student.name} age: #{student.age}, classroom: #{student.classroom.label}"
end

puts '-------------------------------------------------------------------------------------------------'

book1 = Book.new('Code Complete', 'Steve McConnell')
book2 = Book.new('Head First Design Patterns', 'Andrew Hunt && David Thomas')
book3 = Book.new('The Clean Coder', 'Robert C. Martin')

Rental.new('2022-02-23', book1, james)
Rental.new('2022-03-13', book2, james)
Rental.new('2022-04-03', book3, james)

puts 'James books list: '
james.rentals.each do |rental|
  puts "book_title: '#{rental.book.title}', book_author: #{rental.book.author}\n\n"
end

puts '-------------------------------------------------------------------------------------------------'
