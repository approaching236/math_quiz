module Addition
  class Add
    def initialize
      @a = rand(100) + 20
      @b = rand(100) + 20
    end

    def ask
      "#{@a} + #{@b} = ?"
    end

    def answer
      (@a + @b).to_s
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
