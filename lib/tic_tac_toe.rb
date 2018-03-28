
WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #horizontal middle row
  [6, 7, 8], #bottom row
  [0, 3, 6], #left column
  [1, 4, 7], #middle column
  [2, 5, 8], #right column
  [0, 4, 8], #left diagonal
  [2, 4, 6]  #right diagonal
  ]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
<<<<<<< HEAD

#################################################

=======
>>>>>>> ec75a99cb341dac82d426ee23ce07d3d11788d0d
def input_to_index(inp)
  inp.to_i-1
end

<<<<<<< HEAD
#################################################

=======
>>>>>>> ec75a99cb341dac82d426ee23ce07d3d11788d0d
def move(board,po,ch)
board[po]=ch
display_board(board)
end

<<<<<<< HEAD


#################################################

def position_taken?(board,idx)
  board[idx].eql?("X")||board[idx]=="O"
end

#################################################

def valid_move?(board,idx)
  (0..8)===idx && !(position_taken?(board,idx))
end

#################################################

def turn(board)
  puts "Please choose btwn 1-9"
  inp=input_to_index(gets.strip)
  !(valid_move?(board,inp)) ? turn(board) : move(board,inp,current_player(board))
  display_board(board)
end

#################################################

=======
def position_taken?(board,idx)
  board[idx]=="X"||board[idx]=="O"
end

def valid_move?(board,idx)
  idx.between?(0,8) && !(position_taken?(board,idx))
end

def turn(board)
  puts "Please choose btwn 1-9"
  inp=input_to_index(gets.strip)
  !(valid_move?(board,inp)) ? turn(board) : move(board,inp, value="X")
  display_board(board)
end

>>>>>>> ec75a99cb341dac82d426ee23ce07d3d11788d0d
def turn_count(board)
   board.count("X")+board.count("O")
end

def current_player(board)
<<<<<<< HEAD
  turn_count(board).even? ? ("X") : ("O")
=======
  turn_count(board).even? ? "X" : "O"
>>>>>>> ec75a99cb341dac82d426ee23ce07d3d11788d0d
end

####################################################

def won?(board)
<<<<<<< HEAD
  WIN_COMBINATIONS.find do |idx|
    if idx.all? {|i| board[i] == "X" } == true
      idx
    elsif idx.all? {|i| board[i] == "O" } == true
      idx
=======
  board.all? {|i| i != " " || i != ""}
  w_arr = WIN_COMBINATIONS.detect do |w_arr|
    if w_arr.all? {|po| board[po] == "X" } == true
      w_arr.inspect
    elsif w_arr.all? {|po| board[po] == "O" } == true
      w_arr.inspect
>>>>>>> ec75a99cb341dac82d426ee23ce07d3d11788d0d
    end
  end
end

<<<<<<< HEAD
#################################################

=======
>>>>>>> ec75a99cb341dac82d426ee23ce07d3d11788d0d
def full?(board)
board.all? {|i| i == "X" || i == "O" }
end

<<<<<<< HEAD
###################################################

def draw?(board)
  won?(board)==nil&&full?(board)==true
end

###################################################
=======
def draw?(board)
  won?(board)==nil&&full?(board)==true

end
>>>>>>> ec75a99cb341dac82d426ee23ce07d3d11788d0d

def over?(board)
  draw?(board)||won?(board)
end

<<<<<<< HEAD
###################################################

def winner(board)

     board[won?(board)[0]] if  won?(board)
end

###################################################

def play(board)

until over?(board)
    turn(board)
  end
draw?(board) ? (puts "Cat's Game!") :  (puts "Congratulations #{winner(board)}!" )
=======
def winner(board)
  if  won?(board)!=nil
     board[won?(board)[0]]
  end
end

def play(board)
inp=gets.strip
until over?(board) == true
    turn(board)
  end
>>>>>>> ec75a99cb341dac82d426ee23ce07d3d11788d0d
end
