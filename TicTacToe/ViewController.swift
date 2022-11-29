//
//  ViewController.swift
//  TicTacToe
//
//  Created by josefin hellgren on 2022-11-29.
//

import UIKit
private var count : Int = 0

class ViewController: UIViewController {
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // gör en lista av alla knappar
        
        
        
        
    }
    func winner(){
        //save titleLabel symbols to list
        // in list
        //check result with list
        //kör funktion när det är >3 symboler i listan
        // switch case
        
        
        
    }
    
    func clearBoard(){
        //when list is full
        }
    
    @IBAction func buttons(_ sender: UIButton) {
        
    if(sender.titleLabel?.text == nil ){
            count += 1
            if(count % 2 == 0){
                
                
                sender.setTitle("O", for: .normal)
                messager.text = "X´s turn"
                
                
            }else{sender.setTitle("X", for: .normal)
                messager.text = "O's turn"
                ticTacList[sender.tag] = sender.titleLabel?.text ?? ""
            }
            }
        
        if(count % 2 == 0){
            ticTacList[sender.tag] = "O"
        }else{
            ticTacList[sender.tag] = "X"
        }
        
        
        
        /// vinst logic:
    
        if(ticTacList[0] == "X" && ticTacList[1] == "X" && ticTacList[2] == "X"){
            messager.text = "X wins"
        }else if(ticTacList[0] == "O" && ticTacList[1] == "O" && ticTacList[2] == "O" ) {
            messager.text = "O Wins!"
        
        }
        
        if(ticTacList[3] == "X" && ticTacList[4] == "X" && ticTacList[5] == "X"){
            messager.text = "X wins"
        }else if(ticTacList[3] == "O" && ticTacList[4] == "O" && ticTacList[5] == "O" ) {
            messager.text = "O Wins!"
        
        }
        
        
        
        if(ticTacList[6] == "X" && ticTacList[7] == "X" && ticTacList[8] == "X"){
            messager.text = "X wins"
        }else if(ticTacList[6] == "O" && ticTacList[7] == "O" && ticTacList[8] == "O" ) {
            messager.text = "O Wins!"
        
        }
        
        if(ticTacList[0] == "X" && ticTacList[3] == "X" && ticTacList[6] == "X"){
            messager.text = "X wins"
        }else if(ticTacList[0] == "O" && ticTacList[3] == "O" && ticTacList[6] == "O" ) {
            messager.text = "O Wins!"
        
        }
        
        if(ticTacList[1] == "X" && ticTacList[4] == "X" && ticTacList[7] == "X"){
            messager.text = "X wins"
        }else if(ticTacList[1] == "O" && ticTacList[4] == "O" && ticTacList[7] == "O" ) {
            messager.text = "O Wins!"
        
        }
        
        if(ticTacList[2] == "X" && ticTacList[5] == "X" && ticTacList[8] == "X"){
            messager.text = "X wins"
        }else if(ticTacList[2] == "O" && ticTacList[5] == "O" && ticTacList[8] == "O" ) {
            messager.text = "O Wins!"
        
        }
        
        if(ticTacList[2] == "X" && ticTacList[4] == "X" && ticTacList[6] == "X"){
            messager.text = "X wins"
        }else if(ticTacList[2] == "O" && ticTacList[4] == "O" && ticTacList[6] == "O" ) {
            messager.text = "O Wins!"
        
        }
        
    }
    
    
    
    
    
    
    
}

