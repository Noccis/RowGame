//
//  RowGame.swift
//  RowGame
//
//  Created by Toni Löf on 2021-11-23.
//

import Foundation

class RowGame {
    
    var boardArray: [Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    
    
    func setPlayerMark(arrayNr: Int, controler: ViewController, imageOutlet: UIImageView) {
        if playerActive == true {
            // Player one active
            gameBoard.boardArray[arrayNr] = 1
            imageOutlet.image = UIImage(named: "xgreen")
            playerActive.toggle()
            isGameOver = gameBoard.isGameOver()
            
            print("Set player mark func running, P1. Number \(gameBoard.boardArray[arrayNr]) set to mark")
            print(gameBoard.boardArray)
            
        }else {
            // Player two active
            gameBoard.boardArray[arrayNr] = 2
            imageOutlet.image = UIImage(named: "cirkle")
            playerActive.toggle()
            isGameOver = gameBoard.isGameOver()
            
            print("Set player mark func running, P2 Number \(gameBoard.boardArray[arrayNr]) set to mark")
            print(gameBoard.boardArray)
        }
        
    }
    
    func isGameOver()-> Bool {
        for spot in boardArray{
            if spot == 0 {
                return false
            }
        }
        isThereAWinner()
        return true
        
    }
    
    
    func isThereAWinner() {
        
        
    }
    
    func resetGame() {
        
        
    }
    
}
