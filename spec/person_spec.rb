require_relative '../lib/person'

describe 'Person' do
  before(:each) do
    @person = Person.new(20, 'Arnold', parent_permission: true)
  end

  it 'Take the age, name, and parent premission' do
    expect(@person.age).to eq 20
    expect(@person.name).to eq 'Arnold'
    expect(@person.parent_permission).to be true
    expect(@person.rentals).to eq []
  end

  it 'The constructor method sets default value for the optional name parameter if it is not provided' do
    person = Person.new(20)
    expect(person.name).to eql 'Unknown'
  end

  it 'The constructor method sets default value for the optional parent_permission parameter if it is not provided' do
    person = Person.new(22)
    expect(person.parent_permission).to be true
  end

  it 'Should return true if the age is less or equal than 18 and the parent_permission is true ' do
    person = Person.new(17, 'Ali', parent_permission: true)
    expect(person.can_use_services?).to be true
  end

  it 'Should return false if the age is less or equal than 18 and the parent_permission is false ' do
    person = Person.new(16, 'Ali', parent_permission: false)
    expect(person.can_use_services?).to be false
  end

  it 'Should return the name when correct_name is called' do
    person = Person.new(22, 'Caleb', parent_permission: true)
    expect(person.correct_name).to eql 'Caleb'
  end

  it 'Should return the number of the rental when added rental' do
    dan = Person.new(22, 'Ali', parent_permission: true)
    dan.add_rental('2022-04-18', Book.new('Learn programming', 'test'))
    dan.add_rental('2022-04-18', Book.new('Learn programming', 'test'))
    dan.add_rental('2022-04-18', Book.new('Learn programming', 'test'))
    expect(dan.rentals.length).to eql 3
  end
end
