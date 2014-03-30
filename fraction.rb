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

  class MissingAddend
    def initialize
      @a = rand(15)
      @b = rand(15)
    end

    def ask
      "#{@a} + _ = #{@a+@b}"
    end

    def answer
      @b.to_s
    end
  end
end
