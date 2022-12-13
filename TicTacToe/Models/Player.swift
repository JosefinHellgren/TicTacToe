//
//  Players.swift
//  TicTacToe
//
//  Created by josefin hellgren on 2022-12-08.
//

import Foundation

class Player : Equatable {
    
    var name : String = "player"
    var score : Int = 0
    var ticTac : String = ""
    
    init() {}
    
    init (name : String, ticTac : String) {
        self.name = name
        self.ticTac = ticTac
    }
    
    static func == (lhs: Player, rhs: Player) -> Bool {
        return lhs.name == rhs.name
        

    }
    
    func makeMove(){
        // here we can put the human move just like the robotmove has its own move in its class
        
        
    }
    
    
    
}
