def display_board(board)
  puts " #{board[0]} | #{1} | #{2} "
  puts "-----------"
  puts " #{3} | #{4} | #{5} "
  puts "-----------"
  puts " #{6} | #{7} | #{8} "
end

def input_to_index(input)
  index = input.to_i-1
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == "" || board[index] == " " || board[index] == nil
    false
  end
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    true
  else
    false
  end
end

def move(board, index, character = "X")
  board[index] = character
end
  

  