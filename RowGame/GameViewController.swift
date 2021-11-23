//
//  GameViewController.swift
//  RowGame
//
//  Created by Toni Löf on 2021-11-23.
//

import UIKit

class GameViewController: UIViewController {

    var isGameOver = false
    var playerActive = true // true = player 1, false = player 2
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Skapa 2 spelare
        let player1 = Player(playerID: 1, playerImage: "cat2")
        let player2 = Player(playerID: 2, playerImage: "dog")
        
    
        // Skapa ett RowGame objekt
        let gameBoard = RowGame()
        
        // Skapa ImageViews som du kopplar funktioner till
        
       // Sätta en bild: blabla.image = UIImage(named: player1.playerImage eller "cat2" )
        
        // Lägg till game.isGameOver() på alla clicks.
        
        
        
        // Do any additional setup after loading the view.
    }
    

    
    
    
    

}
