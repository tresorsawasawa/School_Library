require_relative 'lib/capitalize_decorator'
require_relative 'lib/trimmer_decorator'
require_relative 'lib/classroom'
require_relative 'lib/teacher'
require_relative 'lib/student'
require_relative 'lib/person'
require_relative 'lib/rental'
require_relative 'lib/book'

class App
  def initialize
    @books = []
    @persons = []
    @rentals = []
  end

  def list_all_books
    @books
  end

  def list_all_persons
    @persons
  end

  
end
