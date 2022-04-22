require_relative '../lib/capitalize_decorator'
require_relative '../lib/trimmer_decorator'
require_relative '../lib/person'

describe TrimmerDecorator do
  context 'When testing decorator classes' do
    it 'Sholud return a string capitalized' do
      person = Person.new(22, 'maximilianus')
      person.correct_name
      capitalized_person = CapitalizeDecorator.new(person)
      expect(capitalized_person.correct_name).to eq 'Maximilianus'
    end

    it 'Should return only the 10 characheres of the name' do
      person = Person.new(22, 'maximilianus')
      capitalized_trimmed_person = TrimmerDecorator.new(person)
      expect(capitalized_trimmed_person.correct_name).to eq 'maximilian'
    end
  end
end
