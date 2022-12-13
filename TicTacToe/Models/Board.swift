

import Foundation
class Board{
    
    var player1 = Player (name: "player1", ticTac: "X")
    var player2 = Player (name: "player2", ticTac: "O")
    
    var robot : Robot!
    var delegate : BoardUpdateDelegate
    public private(set) var boxes = ["","","","","","","","",""]
    public var currentPlayer : Player
    
    
    init( boardUpdateDelegate : BoardUpdateDelegate ) {
        currentPlayer = player1
        delegate = boardUpdateDelegate
        robot = Robot(board: self)
        
    }
    
    func checkForWinner() -> String {
        
        //need to add if it is a draw and the board is full then to reset the board
        if(boxes[0] == "X" && boxes[1] == "X" && boxes[2] == "X"){
           
            return "X"
            
        
        }else if(boxes[0] == "O" && boxes[1] == "O" && boxes[2] == "O" ) {
            
            return "O"
        }
        
        if(boxes[3] == "X" && boxes[4] == "X" && boxes[5] == "X"){
            
            return "X"
            
        }else if(boxes[3] == "O" && boxes[4] == "O" && boxes[5] == "O" ) {
           
            return "O"
        }
        
        if(boxes[6] == "X" && boxes[7] == "X" && boxes[8] == "X"){
           
            return "X"
            
        }else if(boxes[6] == "O" && boxes[7] == "O" && boxes[8] == "O" ) {
           
            return "O"
            
        }
        
        if(boxes[0] == "X" && boxes[3] == "X" && boxes[6] == "X"){
           
            return "X"
            
        }else if(boxes[0] == "O" && boxes[3] == "O" && boxes[6] == "O" ) {
            
            return "O"
        }
        
        if(boxes[1] == "X" && boxes[4] == "X" && boxes[7] == "X"){
            
            return "X"
            
        }else if(boxes[1] == "O" && boxes[4] == "O" && boxes[7] == "O" ) {
           
            return "O"
        }
        
        if(boxes[2] == "X" && boxes[5] == "X" && boxes[8] == "X"){
            
            return "X"
            
        }else if(boxes[2] == "O" && boxes[5] == "O" && boxes[8] == "O" ) {
            
            return "O"
            
        }
        
        if(boxes[2] == "X" && boxes[4] == "X" && boxes[6] == "X"){
            
            return "X"
            
        }else if(boxes[2] == "O" && boxes[4] == "O" && boxes[6] == "O" ) {
           
            return "O"
            
        }
        
        if(boxes[0] == "X" && boxes[4] == "X" && boxes[8] == "X"){
           
            return "X"
            
        }else if(boxes[0] == "O" && boxes[4] == "O" && boxes[8] == "O" ) {
           
            return "O"
            
        }
        
        return ""
    }
    
    func reset(){
        //connected to the play button
        //should perform when board is full also
        
        currentPlayer = player1
        boxes = ["","","","","","","","",""]
        delegate.boardDidUpdate(board: self)
        
        
    }
    

 
    func placeMarker(place : Int, marker : Player){
        boxes[place] = marker.ticTac
        delegate.boardDidUpdate(board: self)
    }
    
    func playerMove( box : Int ){
        //triggers when button is pressed in view
        //check if box is free/empty in list
        //if free/empty place X or O in box update list
        //change currentplayer to the other symbol
        //if ilegal move, maybe later fancy varning/alert
        if boxes[box] == "" && checkForWinner() == "" {
            boxes[box] = currentPlayer.ticTac
            
            if currentPlayer == player1
            {
                currentPlayer = player2
                
                
            }else{
                currentPlayer = player1
                
            }
            delegate.boardDidUpdate(board: self)
        }
        
        print("\(boxes)")
       
    }
    
    
 
    
}





