module Players
  class Computer < Player

    attr_reader :move

    def move(board)
      if (board.cells[0] || board.cells[2] || board.cells[4] || board.cells[6] || board.cells[8]) == "X"
        ai_move = ["2", "4", "6", "8"]
        ai_move.sample
      elsif (board.cells[1] || board.cells[3] || board.cells[5] || board.cells[7]) == "X"
        ai_move = ["1", "3", "5", "7", "9"]
        ai_move.sample
      else
        ai_move = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
        ai_move.sample
      end
    end
  end
end
