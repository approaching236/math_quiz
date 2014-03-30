require './fraction'
require './addition'
include Fraction

class Question
  def initialize question_types
    @question_types = question_types
  end

  def loop
    guess = ""
    right = 0
    wrong = 0
    while guess != "q"
      question_type = @question_types[rand @question_types.length].new
      puts question_type.ask
      guess = gets.to_s
      if guess.match "q"
        return
      end

      if guess.match question_type.answer
        puts "** WOOHOO **"
        right = right + 1
      else
        puts "the answer was: #{question_type.answer}"
        wrong = wrong + 1
      end
      puts "right: #{right} wrong: #{wrong}"
      puts
    end
  end
end

question_types = []
# question_types << MissingAddend
# question_types << Add
# question_types << Fraction::MultiplyFractions
question_types << Fraction::CompareFractions

puts question_types
Question.new(question_types).loop
