#board
board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#input_to_index
def input_to_index(user_input)
  converted_input = "#{user_input}".to_i
  converted_input -= 1
  return converted_input
end
#move
def move(array, index, value = "X")
  array[index] = value
  return array
end
#position_taken?
def position_taken?(board, index)
  if board[index] == " " or board[index] == "" or board[index] == nil
    then return false
  elsif board[index] == "X" or board[index] == "O"
    then return true
  end
end
#valid_move?
def valid_move?(board, index)
  if position_taken?(board, index) == false and index.between?(0,8)
    then true
  else
    false
  end
end
#turn
