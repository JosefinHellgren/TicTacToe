//
//  ViewController.swift
//  TicTacToe
//
//  Created by josefin hellgren on 2022-11-29.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var player1outlet: UITextField!
   
    @IBOutlet weak var playagainButton: UIButton!
    @IBOutlet weak var player2outlet: UITextField!
    var playerOne : String = "X"
    var playerTwo : String = "O"
    @IBOutlet weak var a1Button: UIButton!
    @IBOutlet weak var messager: UILabel!
    @IBOutlet weak var a2Button: UIButton!
    private var count : Int = 0
    @IBOutlet weak var a3button: UIButton!
    @IBOutlet weak var b1Button: UIButton!
    @IBOutlet weak var b2Button: UIButton!
    @IBOutlet weak var b3Button: UIButton!
    @IBOutlet weak var c1Button: UIButton!
    @IBOutlet weak var c2Button: UIButton!
    @IBOutlet weak var c3Button: UIButton!
    var ticTacList = ["", "", "","","","","","",""]
    var buttonLIST = [UIButton]()
    var playAgainCount : Int = 0
    var turn : Bool = true
    
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
       
        
    
        
        
        
        
        
       
        
    }
   
   
    func winner(){
       //winning logic
        
        if(ticTacList[0] == "X" && ticTacList[1] == "X" && ticTacList[2] == "X"){
            messager.text = "X wins"
            }else if(ticTacList[0] == "O" && ticTacList[1] == "O" && ticTacList[2] == "O" ) {
            messager.text = "O Wins!"}
        
        if(ticTacList[3] == "X" && ticTacList[4] == "X" && ticTacList[5] == "X"){
            messager.text = "X wins"
         }else if(ticTacList[3] == "O" && ticTacList[4] == "O" && ticTacList[5] == "O" ) {
            messager.text = "O Wins!"}
        
        if(ticTacList[6] == "X" && ticTacList[7] == "X" && ticTacList[8] == "X"){
            messager.text = "X wins"
           }else if(ticTacList[6] == "O" && ticTacList[7] == "O" && ticTacList[8] == "O" ) {
            messager.text = "O Wins!"
           }
        
        if(ticTacList[0] == "X" && ticTacList[3] == "X" && ticTacList[6] == "X"){
            messager.text = "X wins"
            }else if(ticTacList[0] == "O" && ticTacList[3] == "O" && ticTacList[6] == "O" ) {
            messager.text = "O Wins!"}
        
        if(ticTacList[1] == "X" && ticTacList[4] == "X" && ticTacList[7] == "X"){
            messager.text = "X wins"
            }else if(ticTacList[1] == "O" && ticTacList[4] == "O" && ticTacList[7] == "O" ) {
            messager.text = "O Wins!"}
        
        if(ticTacList[2] == "X" && ticTacList[5] == "X" && ticTacList[8] == "X"){
            messager.text = "X wins"
            }else if(ticTacList[2] == "O" && ticTacList[5] == "O" && ticTacList[8] == "O" ) {
            messager.text = "O Wins!"}
        
        if(ticTacList[2] == "X" && ticTacList[4] == "X" && ticTacList[6] == "X"){
            messager.text = "X wins"
           }else if(ticTacList[2] == "O" && ticTacList[4] == "O" && ticTacList[6] == "O" ) {
            messager.text = "O Wins!"}
        
        if(ticTacList[0] == "X" && ticTacList[4] == "X" && ticTacList[8] == "X"){
            messager.text = "X wins"
           }else if(ticTacList[0] == "O" && ticTacList[4] == "O" && ticTacList[8] == "O" ) {
            messager.text = "O Wins!"}
        
    }
    
    
    
    func clearBoard(){
        if(messager.text == "O Wins!" || messager.text == "X wins"){
            
            ticTacList = ["", "", "","","","","","",""]
            for buttons in buttonLIST {
               // buttons.setTitle("", for: .normal)
                buttons.titleLabel?.text = ""
               
        }
        }else{
            ticTacList = ["", "", "","","","","","",""]
            for buttons in buttonLIST {
               // buttons.setTitle("", for: .normal)
                buttons.titleLabel?.text = ""
        }
        }
    }
    
    @IBAction func playAgainButton(_ sender: UIButton) {
        clearBoard()
       
        playerOne = player1outlet.text ?? "O"
        playerTwo = player2outlet.text ?? "X"
        messager.text = "\(playerTwo)'s turn"
        player1outlet.text = "O"
        player2outlet.text = "X"
        turn = true
        
        
            playagainButton.setTitle("Play again", for: .normal)
            
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        
        print("\(count)")
        print("\(ticTacList)")
<<<<<<< HEAD
        
    //if(sender.titleLabel?.text == nil ){
            //count += 1
            if(turn == false){
               
=======
        count += 1
            if(count % 2 == 0){
>>>>>>> 9ab4c91a233a0d191cfbee08eb3808e77151c026
             sender.setTitle("O", for: .normal)
                ticTacList[sender.tag] = "O"
                messager.text = "\(playerOne)´s turn"
                turn = true
                
            }else
        {sender.setTitle("X", for: .normal)
                //if (player2==Robotplayer){
                // player2 = robotplayer}
                messager.text = "\(playerTwo)'s turn"
                ticTacList[sender.tag] = "X"
                turn = false

            }
        
        
    winner()
        print("\(ticTacList)")
        
        }
    
    
    
    }

