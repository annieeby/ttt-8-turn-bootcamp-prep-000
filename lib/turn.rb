def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
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

def turn(board)
  input = gets.strip
  input_to_index(input)
  if valid_move?(board, index)
    move
  else 
    puts "Please enter 1-9:"
    until valid_move?(board, index)
    end
  end
end
  
#I know that turn only wants one argument: turn(board) but how can I use valid_move? (which takes two arguments) if that is the case?
  