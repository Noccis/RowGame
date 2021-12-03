//
//  ViewController.swift
//  RowGame
//
//  Created by Toni Löf on 2021-11-23.
//

import UIKit

class ViewController: UIViewController {
    
   // var isLabelsVisible = true
    
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
       
        
        
        // Do any additional setup after loading the view.
    }
    
//    func showOrHideLabels() {
//
//        if isLabelsVisible == true {
//
//            enterNameLabel1.isHidden = true
//            enterNameLabel2.isHidden = true
//            userInputText1.isHidden = true
//            userInputText2.isHidden = true
//
//            isLabelsVisible = false
//        }else if isLabelsVisible == false {
            
//            enterNameLabel1.isHidden = false
//            enterNameLabel2.isHidden = false
//            userInputText1.isHidden = false
//            userInputText2.isHidden = false
//
//            isLabelsVisible = true
//
//        }else{
//            print("showOrHideLabels ERROR")
//        }
//
//    }
    

    @IBAction func playWithFriend(_ sender: UIButton) {
        
        enterNameLabel1.isHidden = false
        enterNameLabel2.isHidden = false
        userInputText1.isHidden = false
        userInputText2.isHidden = false
        startGameButton.isHidden = false
        
    }
    
    
    @IBAction func playWithRobot(_ sender: UIButton) {
        
        enterNameLabel1.isHidden = false
        userInputText1.isHidden = false
        startGameButton.isHidden = false
        
    }
    
    
   // @IBAction func startGame(_ sender: UIButton) {  // Kanske bara skicka med 2 strings?
//        let player1 = userInputText1.text
//        let player2: String
//        if userInputText2.text == "" {
//             player2 = "Beep"
//            print("Input 2 = empty string")
//        }else if userInputText2 == nil {
//
//            player2 = "Beep"
//            print("input 2 = nil")
//
//        }else{
//
//         //   player2 = userInputText2.text
//
//        }
 //   }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Lägg till if stats
        guard let destinationVC = segue.destination as? GameViewController else {return}
        
        // Ska jag flytta detta till action startGame?
        destinationVC.p1Name = userInputText1.text
        destinationVC.p2Name = userInputText2.text
        /*
         guard let destinationVC = segue.destination as? JournalEntryViewController else { return }
         guard let cell = sender as? UITableViewCell else { return }
         guard let indexPath = tableView.indexPath(for: cell) else { return }
         guard let entry = journal.entry(index: indexPath.row) else { return }
                 
         destinationVC.journalEntry = entry
         */
           
       }
    
}

