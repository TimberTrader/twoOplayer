
  class Question
    attr_reader :new_val1, :new_val2, :solution
    
    def initialize
      @new_val1 = randomNumGen
      @new_val2 = randomNumGen
      @solution = @new_val1 + @new_val2
    end

    def randomNumGen
      rand(1..20)
    end
  
  end

