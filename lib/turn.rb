def display_board(board)
  puts " #{0} | #{1} | #{2} | "
  puts "-----------"
  puts " #{3} | #{4} | #{5} | "
  puts "-----------"
  puts " #{6} | #{7} | #{8} | "
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    true
  else
    false

  