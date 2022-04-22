require_relative '../lib/classroom'
require_relative '../lib/student'
require_relative '../lib/book'

describe Classroom do
  before(:each) do
    @classroom = Classroom.new('Y1_Computer_Science')
  end

  it 'Take the classroom label name and Students' do
    expect(@classroom.label).to eq 'Y1_Computer_Science'
    expect(@classroom.students).to eq []
  end

  it 'Should return only one student when adding a student' do
    moses = Student.new(34, 'Moses', parent_permission: true)
    jef = Student.new(14, 'Jef', parent_permission: false)
    @classroom.add_student(moses)
    @classroom.add_student(jef)
    expect(@classroom.students.length).to eql 2
  end

  it 'Should return only one student when adding the same student' do
    trent = Student.new(34, 'Trent', parent_permission: true)
    @classroom.add_student(trent)
    @classroom.add_student(trent)
    @classroom.add_student(trent)
    @classroom.add_student(trent)
    @classroom.add_student(trent)
    expect(@classroom.students.length).to eql 1
  end

  it 'Should return the classroom of student when adding students in the classroom' do
    marcos = Student.new(25, 'Marcos', parent_permission: true)
    @classroom.add_student(marcos)
    expect(marcos.classroom).to eq @classroom
  end
end
