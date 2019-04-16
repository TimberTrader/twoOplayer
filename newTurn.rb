
  class NewTurn
    
    def self.question(question)
      "what does #{question.new_val1} + #{question.new_val2} equal?"
    end

    def self.correct_msg
      "Yes, you are correct!"
    end
    
    def self.false_msg
      "Seriously? No!"
    end
    
    def self.footer
      "---- New Turn ----"
    end
  end

      