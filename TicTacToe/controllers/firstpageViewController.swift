//
//  firstpageViewController.swift
//  TicTacToe
//
//  Created by josefin hellgren on 2022-12-09.
//

import Foundation
import UIKit

class firstPageViewController : UIViewController{
    
    var humanVSHumanSegue : String = "humanVSHumanSegue"
    
    var robotVSHumanSegue : String = "robotVSHumanSegue"
    
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    
    
}
   
    @IBAction func humanVSHuman(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "humanSegue", sender: self)
        
        
        print("you clicket humanvshuman")
        
        
    }
    
    @IBAction func robotVSHuman(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "robotSegue", sender: self)
        
        print("you clicked robotVSHUMAN")
        
        
    }
    
  
}
