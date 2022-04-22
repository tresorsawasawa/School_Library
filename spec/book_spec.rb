require_relative '../lib/book'
require_relative '../lib/rental'

describe 'Book' do
  before(:each) do
    @book = Book.new('Game of thrones', 'George Martin')
  end

  it 'Should take only the title and the author' do
    expect(@book.author).to eq 'George Martin'
    expect(@book.author).not_to eq 'Georges Martin'
    expect(@book.title).to eq 'Game of thrones'
    expect(@book.rentals).to eq []
  end

  it 'Should create a new book and take the title and the author' do
    my_book = Book.new('The Invisible Life of Addie LaRue', 'V.E. Schwab')
    expect(my_book.title).to eql 'The Invisible Life of Addie LaRue'
    expect(my_book.author).to eql 'V.E. Schwab'
    expect(my_book.author).not_to eql 'V.E Schwab'
  end

  it 'Should return the number of books rented when added rentals' do
    rent_book = Book.new('The Hobbit', '	J. R. R. Tolkien')
    rent_book.add_rental('2022-04-16', Person.new(23, 'James'))
    rent_book.add_rental('2022-03-16', Person.new(23, 'James'))
    rent_book.add_rental('2022-02-16', Person.new(23, 'James'))
    expect(rent_book.rentals.length).to be 3
  end
end
