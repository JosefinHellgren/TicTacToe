//
//  ViewController.swift
//  TicTacToe
//
//  Created by josefin hellgren on 2022-11-29.
//

import UIKit


class ViewController: UIViewController , BoardUpdateDelegate {
    
    
   

    @IBOutlet weak var playerOneLabel: UILabel!
    @IBOutlet weak var playerTwoLabel: UILabel!
    @IBOutlet weak var playerOneScoreLabel: UILabel!
    @IBOutlet weak var playerTwoScoreLabel: UILabel!
    @IBOutlet weak var messager: UILabel!
    @IBOutlet weak var playagainButton: UIButton!
    
    @IBOutlet weak var a1Button: UIButton!
    @IBOutlet weak var a2Button: UIButton!
    @IBOutlet weak var a3button: UIButton!
    @IBOutlet weak var b1Button: UIButton!
    @IBOutlet weak var b2Button: UIButton!
    @IBOutlet weak var b3Button: UIButton!
    @IBOutlet weak var c1Button: UIButton!
    @IBOutlet weak var c2Button: UIButton!
    @IBOutlet weak var c3Button: UIButton!
    
    var player1Name : String? = "player 1"
    var player2Name: String? = "player 2"
    var wichGame : String?
    
   
    
    var buttonLIST = [UIButton]()
  
    lazy var board : Board = Board(boardUpdateDelegate : self)
        
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
       
        buttonLIST.append(a1Button)
        buttonLIST.append(a2Button)
        buttonLIST.append(a3button)
        buttonLIST.append(b1Button)
        
        buttonLIST.append(b2Button)
        buttonLIST.append(b3Button)
        buttonLIST.append(c1Button)
        buttonLIST.append(c2Button)
        buttonLIST.append(c3Button)
        
        boardDidUpdate(board: board)
    }
   
    func boardDidUpdate(board: Board) {
        //update buttons to mirror boardBoxes
        //Update messagerLabel to whos turn it is
        //if winner update messagerLabel to winner
        
        for buttons in buttonLIST{
            buttons.setTitle(board.boxes[buttons.tag], for: .normal)
        }
        board.player1.name = player1Name ?? "player 1"
        board.player2.name = player2Name ?? "player 2"
        playerOneLabel.text = board.player1.name
        playerTwoLabel.text = board.player2.name
        //playerOneScoreLabel.text = "\(robotName?.score))"
        //playerTwoScoreLabel.text =
        
        playerOneScoreLabel.text = String(board.player1.score)
        playerTwoScoreLabel.text = String(board.player2.score)
        
        messager.text = ("\(board.currentPlayer.ticTac) 's turn")
        
        let result = board.checkForWinner()
        if result != "" {
            messager.text = "\(result) is the winner"
            if result == "X"{
                board.player1.score += 1
            }else if result == "O"{
                board.player2.score += 1
            }
            
            //how to disable the buttons
            }
        
        
        playerOneScoreLabel.text = String(board.player1.score)
        playerTwoScoreLabel.text = String(board.player2.score)
        
    }
    
    @IBAction func exitGame(_ sender: UIButton) {
        performSegue(withIdentifier: "backToStart", sender: self)
        
    }
    
    @IBAction func playButton(_ sender: UIButton) {
        
     board.reset()
       
       
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        
        
        if wichGame == "humanVShuman"{
            board.playerMove(box: sender.tag)
        }else if wichGame == "robotVShuman"{
            if board.boxes[sender.tag] == "" && board.checkForWinner() == ""{
                board.placeMarker(place: sender.tag, marker: board.player1)
                print(" human \(sender.tag)")
            }else{
                return
            }
            if board.checkForWinner() == ""{
                
                DispatchQueue.main.asyncAfter(deadline: . now() + 0.5) {
                    self.board.placeMarker(place: self.board.robot.makeMove(), marker: self.board.robot)
                    print(" robot")
                }
                
                
//             board.placeMarker(place: board.robot.makeMove(), marker: board.robot)
 //               print(" robot")
            }
            
        }
        
        
        
        
        
        //human vs robot game:
        //if i came from segue "robotVShuman"
        
        
        /*if board.boxes[sender.tag] == "" && board.checkForWinner() == ""{
            board.placeMarker(place: sender.tag, marker: board.player1)
            print(" human \(sender.tag)")
        }else{
            return
        }
        if board.checkForWinner() == ""{
            board.placeMarker(place: board.robot.makeMove(), marker: board.robot)
            print(" robot")
        }*/
        
      
        
        
      
       
        
    
    }
 
    
}
