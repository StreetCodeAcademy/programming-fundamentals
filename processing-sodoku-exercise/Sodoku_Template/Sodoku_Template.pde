import java.util.*;

//when the program starts, you will see the initial Sodoku puzzle without the solution. Once you click on the board, the solveBoard function will be called.

boolean solve = false;
boolean solved = false;
Sodoku board = null;

void setup(){
  size(500,500);
  background(255,255,255);
  try {
    board = new Sodoku("board2.txt");
  } catch(Exception e) {
    println(e.getMessage());
    exit();
  }
  board.printBoard();
}

void draw(){
  if(solve && !solved) {
    board.solveBoard();
    board.printBoard();
    solved = true;
  }
}

void mouseClicked() {
  solve = true;
}

//represents the position of a given square on the board -> has an x and a y coordinate
class Coordinate {
  
  public int x;
  public int y;
  
  Coordinate(int x, int y){
    this.x = x;
    this.y = y;
  }
}

//copies a 2d array 
//(hint: this will be helpful to use in your recursion since just passing the board array will pass it by reference, meaning that every recursive call will be modifying the same board array
public int[][] twoDArrCopy(int[][] orig){
  int[][] copy = new int[orig.length][];
  for(int i = 0; i < orig.length; i++){
    copy[i] = orig[i].clone();  
  }
  return copy;
}

class Sodoku {
 
 int[][] board; //holds all the numbers on the board 0's are used to store unfilled spaces
 List<Coordinate> blankSquares = new ArrayList<Coordinate>(); //all the spaces the player has control over
 
  Sodoku(String filename) throws Exception{
    board = new int[9][];
    for(int i = 0; i < 9; i++){
      board[i] = new int[9]; 
    }
    loadBoard(filename);
  }
  
  //color in all spaces that the player controls in white
  private void shadeWrittenSpaces(){
    stroke(255,255,255);
    fill(255, 255, 255);
    for(int i = 0; i < blankSquares.size(); i++) {
      Coordinate cord = blankSquares.get(i);
      rect(cord.x * width/9, cord.y * height/9, width/9, height/9);
    }
    stroke(0,0,0);
  }
  
  public void printBoard(){
    background(240,240,240);
    shadeWrittenSpaces();
    drawSquares();
    drawNumbers();
  }
  
  //You should only need to modify the two below functions (or create any new functions you need to make this work).
  
  //solves the sodoku puzzle and sets board to be the solution
  public void solveBoard(){
    //TODO: Complete this!
  }
  
  //returns a list of all the valid numbers that could be put in the spot represented by cord on the board passed in as the curBoard variable
  //this will be very helpful in your solver function on the recursive step
  public List<Integer> validMoves(Coordinate cord, int[][] curBoard){
    //TODO: Complete this (to use in your solver function)
    return null;
  }
  
  //reads txt file in as sodoku board - board must be 9x9 with 0s as empty squares
  private void loadBoard(String filename) throws Exception{
    String[] lines = loadStrings(filename);
    if(lines.length != 9){
        throw new Exception("wrong number of lines in file");
      }
    for(int i = 0; i < lines.length; i++) {
      String[] nums = split(lines[i],' ');
      if(nums.length != 9){
        throw new Exception("wrong number of numbers in line");
      }
      for(int j = 0; j < nums.length; j++) {
          int num = int(nums[j]);
          board[j][i] = num;
      }
    }
    loadWrittenSpaces();
  }
  
  private void loadWrittenSpaces() {
    for(int x = 0; x < 9; x++){
      for(int y = 0; y < 9; y++){
        if(board[x][y] == 0){
          blankSquares.add(new Coordinate(x, y));
        }
      }
    }
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