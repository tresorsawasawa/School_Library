require_relative '../lib/teacher'
require_relative '../lib/person'

describe Teacher do
  context 'When testing the tacher class' do
    before(:each) do
      @teacher = Teacher.new(42, 'Starships', 'Oliver Q.')
    end

    it 'Take age, speccialization and name of a teacher' do
      expect(@teacher.age).to eq 42
      expect(@teacher.name).to eq 'Oliver Q.'
      expect(@teacher.specialization).to eq 'Starships'
    end

    it 'Should return true when we call the can_use_services? method' do
      teacher = Teacher.new(33, 'specialization', 'Jeffrey')
      response = teacher.can_use_services?
      expect(response).to be true
    end

    it 'Should create an instance of Person when creating a Teacher' do
      teacher = Teacher.new('specialization', 33, 'Tony')
      expect(teacher).to be_a Person
    end
  end
end
