require 'rational'

module Fraction
  class CompareFractions
    def initialize
      @a = Rational(rand(10), rand(10) + 1)
      @b = Rational(rand(10), rand(10) + 1)
    end

    def ask
      "#{@a} <=> #{@b} = ?"
    end

    def answer
      if @a > @b
        ">"
      elsif @a < @b
        "<"
      else
        "="
      end
    end
  end

  class MultiplyFractions
    def initialize
      @a = Rational(rand(10), rand(10) + 1)
      @b = Rational(rand(10), rand(10) + 1)
    end

    def ask
      "Remember to reduce!\n#{@a} * #{@b} = ?"
    end

    def answer
      (@a * @b).to_s
    end
  end
end
