//
//  Robot.swift
//  TicTacToe
//
//  Created by josefin hellgren on 2022-12-08.
//

import Foundation
class Robot : Player{
    
    var board : Board
    var validMoves = [Int] ()
    
    init(board : Board) {
        self.board = board
        super.init(name: "robotic", ticTac: "O")
        
       
    }
    
    
    func makeMove()-> Int{
        //let the robot try putting out random marker untill it clicks a box that is empy.
       // check for valid places in the board and random a place in thoose
        //iterate over validMoves and check against list of best patterns/move to try to win
       
      validMoves.removeAll()
        for (i, box) in board.boxes.enumerated(){
            if box == "" &&  board.checkForWinner() == ""{
                
                validMoves.append(i)
                
                print(validMoves)
            }
        }
        
        let bestMove = chooseMove()
        if bestMove != 9 {
            return bestMove
        }else{
        let robotMove = validMoves.randomElement()
        
    
            
            return robotMove!
            // it now crashes when X  wins
        }
    } 
        
    func chooseMove() -> Int {
        //makes decision on what the current board looks like
        //check for pattern on next good move
        //in validMovesList
        
        
      
        if board.boxes[0] == "O" && board.boxes[1] == "O" && board.boxes[2] == "" {
            return 2
            }
        if board.boxes[3] == "O" && board.boxes[4] == "O" && board.boxes[5] == "" {
            return 5
            }
        if board.boxes[6] == "O" && board.boxes[7] == "O" && board.boxes[8] == "" {
            return 8
            }
        if board.boxes[0] == "O" && board.boxes[3] == "O" && board.boxes[6] == "" {
            return 6
            }
        if board.boxes[1] == "O" && board.boxes[4] == "O" && board.boxes[7] == "" {
            return 7
            }
        if board.boxes[2] == "O" && board.boxes[5] == "O" && board.boxes[8] == "" {
            return 8
            }
        if board.boxes[0] == "O" && board.boxes[4] == "O" && board.boxes[8] == "" {
            return 8
            }
        
          if board.boxes[0] == "O" && board.boxes[1] == "" && board.boxes[2] == "O" {
              return 1
              }
          if board.boxes[3] == "O" && board.boxes[4] == "" && board.boxes[5] == "O" {
              return 4
              }
          if board.boxes[6] == "O" && board.boxes[7] == "" && board.boxes[8] == "O" {
              return 7
              }
          if board.boxes[0] == "O" && board.boxes[3] == "" && board.boxes[6] == "O" {
              return 3
              }
          if board.boxes[1] == "O" && board.boxes[4] == "" && board.boxes[7] == "O" {
              return 4
              }
          if board.boxes[2] == "O" && board.boxes[5] == "" && board.boxes[8] == "O" {
              return 5
              }
          if board.boxes[0] == "O" && board.boxes[4] == "" && board.boxes[8] == "O" {
              return 4
              }
        
          if board.boxes[0] == "" && board.boxes[1] == "O" && board.boxes[2] == "O" {
              return 0
              }
          if board.boxes[3] == "" && board.boxes[4] == "O" && board.boxes[5] == "O" {
              return 3
              }
          if board.boxes[6] == "" && board.boxes[7] == "O" && board.boxes[8] == "O" {
              return 6
              }
          if board.boxes[0] == "" && board.boxes[3] == "O" && board.boxes[6] == "O" {
              return 0
              }
          if board.boxes[1] == "" && board.boxes[4] == "O" && board.boxes[7] == "O" {
              return 1
              }
          if board.boxes[8] == "" && board.boxes[5] == "O" && board.boxes[8] == "O" {
              return 8
              }
          if board.boxes[0] == "" && board.boxes[4] == "O" && board.boxes[8] == "O" {
              return 0
              }


        
        
        return 9
    }
    
    func coolRobotNameGenerator()-> String{
        // a random generator och evil cool robot names.
        
    //two arrays of two parts of cool name
        
        let coolFirstNames = ["Evil","Mean","Cold","Magic", "Cool" , "futuristic"]
    let coolLastNames = ["Robotico", "Robotic","Computericko", "AI", "tech", "Machine"]
        
        
        
       
        
        let coolRobotName = "\(coolFirstNames.randomElement() ?? "terrfic")  \(coolLastNames.randomElement() ?? "machina")"
        
        
     return coolRobotName
    }
    
    func coolRobotPictureGenerator() -> String{
        
        
        let images = ["robot4","robot5","robot7"]
       let randomImage = images.randomElement()
        
        return randomImage ?? "robot1"
    }
    
    
}


