require_relative '../lib/teacher'
require_relative '../lib/person'

describe Rental do
  context 'When testing the Rental class' do
    it 'The add_rental method returns a rental and adds its to the book' do
      book = Book.new('Dark Testament', 'Peter Abrahams')
      person = Person.new(24, 'Morata')

      rentals = person.add_rental('2021-05-04', book)

      expect(person.rentals).to eql [rentals]
    end

    it 'Should return only one rental when adding a rental to a student and a book' do
      person = Student.new(15, 'Harry', parent_permission: true)
      book = Book.new('A Night of Their Own', 'Peter Abrahams')
      Rental.new('1978/04/23', person, book)
      expect(person.rentals.length).to eq 1
      expect(book.rentals.length).to eq 1
    end
  end
end
