class TicTacToe
  def initialize(board)
    @board = board
  end

  def checkArray(array)
    unless array.include?(" ")
      unless array.include?("x")
        return "o"
      end
      unless array.include?("o")
        return "x"
      end
    end
  end

  def winner
    forwardDiag = Array.new
    backwardDiag = Array.new
    @board.each_with_index do |row,index|
      # row checks
      return checkArray(row) unless checkArray(row).nil?

      #col checks
      col = @board.map {|row| row[index]}
      return checkArray(col) unless checkArray(col).nil?

      #diag checks
      forwardDiag.push(@board[index][index])
      backwardDiag.push(@board[index][-(index+1)]) 
    end

    return checkArray(forwardDiag) unless checkArray(forwardDiag).nil?
    return checkArray(backwardDiag) unless checkArray(backwardDiag).nil?

    #unfinished check
    @board.each do |row|
      if row.include? " "
        return "unfinished"
      end
    end
    
    return "draw"
  end
end
