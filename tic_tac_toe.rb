class TicTacToe
  def initialize(board)
    @board = board
  end

  def winner
    forwardDiag = Array.new
    backwardDiag = Array.new
    @board.each_with_index do |row,index|
      # row checks
      unless row.include?(" ")
        unless row.include?("x")
          return "o"
        end
        unless row.include?("o")
          return "x"
        end
      end

      #col checks
      col = @board.map {|row| row[index]}
      unless col.include?(" ")
        unless col.include?("x")
          return "o"
        end
        unless col.include?("o")
          return "x"
        end
      end     

      #diag checks
      forwardDiag.push(@board[index][index])
      backwardDiag.push(@board[index][-(index+1)]) 
    end

    unless forwardDiag.include?(" ")
      unless forwardDiag.include?("x")
        return "o"
      end
      unless forwardDiag.include?("o")
        return "x"
      end
    end
    unless backwardDiag.include?(" ")
      unless backwardDiag.include?("x")
        return "o"
      end
      unless backwardDiag.include?("o")
        return "x"
      end
    end   

    #unfinished check
    @board.each do |row|
      if row.include? " "
        return "unfinished"
      end
    end
    
    return "draw"
  end
end
