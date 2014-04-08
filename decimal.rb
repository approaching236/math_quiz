module Decimal
  class CompareDecimals
    def initialize
      @a = rand(1000) / 100.0
      @b = rand(1000) / 100.0
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
end
