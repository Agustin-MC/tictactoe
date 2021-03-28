class TicTacToe
  def initialize(board)
    @board = board
  end

  def winner
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
    end

    row1 = @board[0]
    row2 = @board[1]
    row3 = @board[2]

    # column checks

    if row1[0] == "o" && row2[0] == "o" && row3[0] == "o"
      return "o"
    end

    if row1[1] == "o" && row2[1] == "o" && row3[1] == "o"
      return "o"
    end

    if row1[2] == "o" && row2[2] == "o" && row3[2] == "o"
      return "o"
    end

    if row1[0] == "x" && row2[0] == "x" && row3[0] == "x"
      return "x"
    end

    if row1[1] == "x" && row2[1] == "x" && row3[1] == "x"
      return "x"
    end

    if row1[2] == "x" && row2[2] == "x" && row3[2] == "x"
      return "x"
    end

    # diagonal checks

    if row1[0] == "o" && row2[1] == "o" && row3[2] == "o"
      return "o"
    end

    if row1[2] == "o" && row2[1] == "o" && row3[0] == "o"
      return "o"
    end

    if row1[0] == "x" && row2[1] == "x" && row3[2] == "x"
      return "x"
    end

    if row1[2] == "x" && row2[1] == "x" && row3[0] == "x"
      return "x"
    end

    @board.each do |row|
      if row.include? " "
        return "unfinished"
      end
    end
    
    return "draw"
  end
end
