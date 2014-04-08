require './fraction'
require './addition'
require './decimal'
require './integer'

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
      guess = gets

      if guess.match "q"
        puts "Right on, out of #{right + wrong} questions, you got #{right} right and #{wrong} wrong."
        return
      end

      # TODO Will allow 7 as answer for -7
      if guess.match question_type.answer
        puts "You got it right!"
        right = right + 1
      else
        puts "Didn't get it this time, the answer was: #{question_type.answer}"
        wrong = wrong + 1
      end
      puts "Score: #{right - wrong}"
      puts
    end
  end
end

question_types = []
# question_types << Addition::MissingAddend
# question_types << Addition::Add
# question_types << Fraction::MultiplyFractions
# question_types << Fraction::CompareFractions
# question_types << Decimal::CompareDecimals
question_types << MyInteger::AddIntegers
question_types << MyInteger::MultiplyIntegers

puts question_types
puts

Question.new(question_types).loop
