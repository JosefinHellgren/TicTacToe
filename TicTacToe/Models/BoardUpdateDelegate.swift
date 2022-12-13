//
//  BoardUpdateDelegate.swift
//  TicTacToe
//
//  Created by josefin hellgren on 2022-12-12.
//

import Foundation

protocol BoardUpdateDelegate{
    
    
    //function that will be called from the mode when there been changes
    func boardDidUpdate( board: Board )
    
}
