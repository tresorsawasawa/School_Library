require_relative 'lib/person'
require_relative 'lib/capitalize_decorator'
require_relative 'lib/trimmer_decorator'

person = Person.new(22, 'maximilianus')
p person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
p capitalized_person.correct_name
capitalized_person = TrimmerDecorator.new(capitalized_person)
p capitalized_person.correct_name
