require_relative 'base_decorator'

class TrimmerDecorator
  def correct_name
    if @nameable.correct_name.lenght < 10
      @nameable.correct_name
    else
      @nameable.correct_name[0, 10]
    end
  end
end