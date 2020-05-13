# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [ 
[0,1,2], # top_row 
[3,4,5], # middle_row 
[6,7,8], # bottom_row 
[0,3,6], # left_column 
[1,4,7], # center_column 
[2,5,8], # right_column 
[0,4,8], # left_diagonal 
[6,4,2]  # right_diagonal 
]

def won?(board)
 WIN_COMBINATIONS.each do |combinations|
   win_index_1 = combinations[0]
   win_index_2 = combinations[1]
   win_index_3 = combinations[2]
   win_index_4 = combinations[3]
   win_index_5 = combinations[4]
   win_index_6 = combinations[5]
   win_index_7 = combinations[6]
   win_index_8 = combinations[7]
      
   position_1 = board[win_index_1] # value of board at win_index_1
   position_2 = board[win_index_2] # value of board at win_index_2
   position_3 = board[win_index_3] # value of board at win_index_3
   
    if(position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1))
      return wind_index_1
    else 
      return false
    end
   
 end
end

def full?(board)
   board.all? {|i| i == "X" || i == "O"}
end

def draw?(board)
   if !won?(board) && full?(board)
     return true
   elsif !won?(board) && !full?(board)
     return false
   else won?(board)
     return false
   end
end

def over?(board)
   if draw?(board) || won?(board) || full?(board)
     return true
   end
end

def winner(board)
   if won?(board)
      return board[won?(board)[0]]
   end
end
