require_relative '../lib/student'

describe Student do
  before(:each) do
    @student = Student.new(22, 'Jenny', true)
  end

  it 'Take age, name and parent_permission of a student' do
    expect(@student.age).to eq 22
    expect(@student.name).to eq 'Jenny'
    expect(@student.parent_permission).to be true
  end

  it 'should return "¯\(ツ)/¯" when calling play_hooky methode' do
    expect(@student.play_hooky).to eq '¯\(ツ)/¯'
  end

  it 'Should return the classroom of student when adding the classroom' do
    classroom = Classroom.new('computer_science')
    @student.classroom = classroom
    expect(@student.classroom).to eq classroom
  end
end
