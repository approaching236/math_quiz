module MyInteger
  class CompareIntegers
    def initialize
      @a = rand(50) - 25
      @b = rand(50) - 25
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

  class AddIntegers
    def initialize
      @a = rand(50) - 25
      @b = rand(50) - 25
    end

    def ask
      "#{@a} + #{@b} = ?"
    end

    def answer
      (@a + @b).to_s
    end
  end
end
