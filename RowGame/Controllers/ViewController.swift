//
//  ViewController.swift
//  RowGame
//
//  Created by Toni Löf on 2021-11-23.
//

import UIKit

class ViewController: UIViewController {
    
    var robotPlayer = false     // Bool to deside if there should be 2 string inputs.
    
    
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    
    @IBOutlet weak var enterNameLabel1: UILabel!
    
    @IBOutlet weak var enterNameLabel2: UILabel!
    
    
    @IBOutlet weak var userInputText1: UITextField!
    
    @IBOutlet weak var userInputText2: UITextField!
    
    @IBOutlet weak var startGameButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        enterNameLabel1.isHidden = true
        enterNameLabel2.isHidden = true
        userInputText1.isHidden = true
        userInputText2.isHidden = true
        startGameButton.isHidden = true
        
        welcomeLabel.text = "Welcome to Row Game! \n Who do you want to play against?"
        
        
    }
    
    
    @IBAction func playWithFriend(_ sender: UIButton) {
        
        enterNameLabel1.isHidden = false
        enterNameLabel2.isHidden = false
        userInputText1.isHidden = false
        userInputText2.isHidden = false
        startGameButton.isHidden = false
        
        userInputText1.becomeFirstResponder()
        
        robotPlayer = false
        
    }
    
    
    @IBAction func playWithRobot(_ sender: UIButton) {
        
        enterNameLabel1.isHidden = false
        userInputText1.isHidden = false
        startGameButton.isHidden = false
        
        userInputText1.becomeFirstResponder()
        
        robotPlayer = true
        
    }
    
    
    @IBAction func playGame(_ sender: UIButton) {
        
        if robotPlayer {    // If player 2 will be a robot.
            
            if userInputText1.text == "" {
                return
            }
                performSegue(withIdentifier: "gameSegue", sender: self)
            
            
        }else{  // If player 2 is human.
            
            if userInputText1.text == "" {  // Check that name string is not empty
                return
            }
            if userInputText2.text == "" {
                return
            }
            
        
            performSegue(withIdentifier: "gameSegue", sender: self)
            
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "gameSegue" {
            
            guard let destinationVC = segue.destination as? GameViewController else {return}
            
            destinationVC.p1Name = userInputText1.text
            destinationVC.p2Name = userInputText2.text
            
            
        }
        
    }
    
}

