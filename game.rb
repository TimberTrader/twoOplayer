
  class Game
    def initialize
      @score = [3,3]
      @counter = 1
    end

    def curr_player 
      @counter.odd? ? "Player 1: " : "Player 2: "
    end

    def playtheGame
      curr_que = Question.new
      puts curr_player + NewTurn.question(curr_que)
      answer = gets.chomp.to_i
      if answer == curr_que.solution
        puts curr_player + NewTurn.correct_msg
        puts "p1: #{ @score[0] } /3 vs p2: #{@score[1]} /3"
        puts NewTurn.footer
        @counter += 1
      else
        index =  (1 + @counter) % 2
        @score[index] -= 1
        p @counter
        if @score[index] != 0
          puts curr_player + NewTurn.false_msg
          puts "p1: #{ @score[0] } /3 vs p2: #{@score[1]} /3"
          puts NewTurn.footer
          @counter += 1
        else
          @counter += 1
          puts "#{curr_player} wins with a score of #{@score[index+1]} / 3"
          puts '----- Game Over -----'
          @game_over = true
        end
      end
    end

    def start
      while !@game_over
        playtheGame
      end
    end

  end
