//
//  robotPageViewController.swift
//  TicTacToe
//
//  Created by josefin hellgren on 2022-12-09.
//
import Foundation
import UIKit

class robotPageViewController: UIViewController , BoardUpdateDelegate{
    
    @IBOutlet weak var robotImage: UIImageView!
    @IBOutlet weak var coolRobotName: UILabel!
    @IBOutlet weak var playerName: UITextField!
    lazy var board = Board (boardUpdateDelegate: self)
    var player : String = "player 1"
    var robotName : String = "robotico"
    var game : String = "robotVShuman"
    override func viewDidLoad() {
        super.viewDidLoad()

        //We want to send the player1 name here
        //we want to create a player? with default score to 0
        //we want to generate a random robot name
        //we want to tell the Game page that we want to play against the computer, the ROBOTVSHUMAN FUNCTION.
        //we want to set saved player name and cool robot name to display instead of "X" and "O" in messager Label
        
        robotName =
       board.robot.coolRobotNameGenerator()
        
        coolRobotName.text = robotName
    
        robotImage.image = UIImage(named: board.robot.coolRobotPictureGenerator())
        
        //random cool robot name:
        //two parts of cool robot names:
        // something technical
        // someting 
    }
    func boardDidUpdate(board: Board) {
    }

    @IBAction func buttonToGame(_ sender: Any) {
    
        player = playerName.text ?? "player 1"
        
        
    performSegue(withIdentifier: "gameRobotSegue", sender: self)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gameRobotSegue" {
                    let viewController = segue.destination as! ViewController
                   viewController.player1Name = player
            viewController.player2Name =
            robotName
            viewController.wichGame = game
    }
    

}
}
