//
//  humanPageViewController.swift
//  TicTacToe
//
//  Created by josefin hellgren on 2022-12-09.
//
import Foundation
import UIKit

class humanPageViewController: UIViewController, BoardUpdateDelegate {

    @IBOutlet weak var player2Name: UITextField!
    @IBOutlet weak var player1Name: UITextField!
    var name1 : String = "player 1"
    var name2 : String = "player 2"
    var game : String = "humanVShuman"
    lazy var board = Board(boardUpdateDelegate: self)
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //here we want to save the names of the players and send them with the segue to Game page
        //also we want to send the information or variable to say to the game Page that we want the HUMANMOVE function/version of game to be played
        //we want to create to Players with default score to: 0
        //we want to set saved player names to display instead of "X" and "O" in messager Label
    }
    func boardDidUpdate(board: Board) {
        
    }
    @IBAction func buttonToGame(_ sender: UIButton) {
        name1 = player1Name.text ?? "player 1"
        name2 = player2Name.text ?? "player 2"
        
       
        
        performSegue(withIdentifier: "gameHumanSegue", sender: self)
   
       
    }
    
    
    
    
    

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gameHumanSegue" {
                    let viewController = segue.destination as! ViewController
                   viewController.player1Name = name1
            viewController.player2Name =
            name2
            viewController.wichGame = game
        
    }
    

}
}
