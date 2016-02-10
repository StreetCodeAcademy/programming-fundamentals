import java.util.*;


void setup(){
  size(500,500);
  background(255,255,255);
  Sodoku board = new Sodoku();
  board.setNumber(9, 1, 1);
  board.printBoard();
}

void draw(){
  
}

class Sodoku {
 
 int[][] board;
  
  Sodoku(){
    board = new int[9][];
    for(int i = 0; i < 9; i++){
      board[i] = new int[9];
      for(int j = 0; j < 9; j++){
          board[i][j] = 0;
      }
    }
  }
  
  Sodoku(int[][] boardInit){
    board = boardInit.clone();
  }
  
  public void printBoard(){
    background(255,255,255);
    drawSquares();
    drawNumbers();
  }
  
  //in this method, 1 corresponds to the first row, and 9 to the last row (we subtract 1 to get rid of 0 indexing!)
  public void setNumber(int val, int x, int y){
    board[x - 1][y - 1] = val;  
  }
  
  public void solveBoard(){
    //TODO: Complete this!  
  }
  
  //returns a list of all the valid numbers that could be put in a given spot
  public List<Integer> validMoves(int x, int y){
    //TODO: Complete this!
    return null;
  }
  
  public boolean isFinished(){
    //TODO: Complete this!
    return false;  
  }
  
  //takes a move and returns whether or not it is a valid move - TODO: complete this if you think it would be helpful for your implementation
  public boolean moveValid(int val, int x, int y){
    if(val > 9 || val < 1){
      return false;  
    }
    return false;
  }
  
  private void drawNumbers(){
    fill(0);
    textSize(40);
    for(int x = 0; x < 9; x++){
      for(int y = 0; y < 9; y++){
        if(board[x][y] != 0){
          text(board[x][y] + "", width*x/9 + width/36, height*y/9, width/9, height/9);
        }
      }
    }
  }
  
  private void drawSquares(){
    strokeWeight(2);
    line(0, height/3, width, height/3);
    line(0, 2*height/3, width, 2*height/3);
    line(width/3, 0, width/3, height);
    line(2*width/3, 0, 2*width/3, height);
    strokeWeight(1);
    for(int i = 1; i < 9; i++){
      line(i*width/9, 0, i*width/9, height);  
    }
    for(int i = 1; i < 9; i++){
      line(0, i*height/9, width, i*height/9);  
    }
  }
  
}