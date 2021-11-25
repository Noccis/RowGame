//
//  GameViewController.swift
//  RowGame
//
//  Created by Toni Löf on 2021-11-25.
//

import UIKit

class GameViewController: UIViewController {
    
    var isGameOver = false
    var playerActive = true // true = player 1, false = player 2
    
    // Skapa ett RowGame objekt
    let gameBoard = RowGame()
    
    // Skapa 2 spelare
    let player1 = Player(playerID: 1, playerImage: "xgreen")
    let player2 = Player(playerID: 2, playerImage: "cirkle")

    @IBOutlet weak var imageZero: UIImageView!
    
    @IBOutlet weak var imageOne: UIImageView!
    
    
    
    
    
    @IBAction func tapZero(_ sender: UITapGestureRecognizer) {
        
        let arrayNr = 0
        if gameBoard.boardArray[arrayNr] == 0 {
            setPlayerMark(arrayNr: arrayNr, imageOutlet: imageZero)
          
        }else{
            print("Invalid move!")
        }
    }
    
    @IBAction func tapOne(_ sender: UITapGestureRecognizer) {
        
        let arrayNr = 1
        if gameBoard.boardArray[arrayNr] == 0 {
            setPlayerMark(arrayNr: arrayNr, imageOutlet: imageOne)
          
        }else{
            print("Invalid move!")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
            
    }
    
    func setPlayerMark(arrayNr: Int, imageOutlet: UIImageView) {
        if playerActive == true {
            // Player one active
            gameBoard.boardArray[arrayNr] = 1
            imageOutlet.image = UIImage(named: "xgreen")
            playerActive.toggle()
            print("Set player mark func running, P1")
            
        }else {
            // Player two active
            gameBoard.boardArray[arrayNr] = 2
            imageOutlet.image = UIImage(named: "cirkle")
            playerActive.toggle()
            print("Set player mark func running, P2")
            
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
