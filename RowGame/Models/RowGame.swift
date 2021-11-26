//
//  RowGame.swift
//  RowGame
//
//  Created by Toni Löf on 2021-11-23.
//

import Foundation

class RowGame {
    
   private var boardArray: [Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0]
 
    
    
    func isSpotOpen(arrayNr: Int, playerActive: Int) -> Bool {
        if boardArray[arrayNr] == 0 {
            print("isSpotOpen spot is OPEN")
            setPlayerIntInArray(arrayNr: arrayNr, playerNr: playerActive)
            return true
        }else{
            print("Invalid move!")
            return false
        }
    }
    
    func setPlayerIntInArray(arrayNr: Int, playerNr: Int) {
        print("setPlayerMark running!")
    boardArray[arrayNr] = playerNr
        isThereAWinner(player: playerNr)
        if isGameOver() == true {
            
            print("setPlayerMark, isGameOver == true")
            
        }
        
    }
 
    
    func isGameOver()-> Bool {
        print("isGameOver running!")
        for spot in boardArray{
            if spot == 0 {
                return false
            }
        }
        gameOver()
        return true
        
    }
    
    
    func isThereAWinner(player: Int) {
        print("isThereAWinner running!")
       /*
        let playerSum = player * 3
        
       if boardArray[0] + boardArray[1] + boardArray[2] == playerSum {
           gameOver()
       }else if boardArray[3] + boardArray[4] + boardArray[5] == playerSum{
           gameOver()
       }else if  boardArray[6] + boardArray[7] + boardArray[8] == playerSum {
           gameOver()
       }else if boardArray[0] + boardArray[3] + boardArray[6] == playerSum {
           gameOver()
       }else if boardArray[1] + boardArray[4] + boardArray[7] == playerSum {
           gameOver()
       }else if boardArray[2] + boardArray[5] + boardArray[8] == playerSum {
           gameOver()
       }else if boardArray[0] + boardArray[4] + boardArray[8] == playerSum {
           gameOver()
       }else if boardArray[6] + boardArray[4] + boardArray[2] == playerSum {
           gameOver()
       }else {
           print("isThereAWinner ERROR")
       }
        */
        if boardArray[0] == player && boardArray[1] == player && boardArray[2] == player {
            gameOver()
            
        }else if boardArray[3] == player && boardArray[4] == player && boardArray[5] == player {
            gameOver()
            
        }else if boardArray[6] == player && boardArray[7] == player && boardArray[8] == player {
            gameOver()
            
        }else if boardArray[0] == player && boardArray[3] == player && boardArray[6] == player {
            gameOver()
            
        }else if boardArray[1] == player && boardArray[4] == player && boardArray[7] == player {
            gameOver()
            
        }else if boardArray[2] == player && boardArray[5] == player && boardArray[8] == player {
            gameOver()
            
        }else if boardArray[0] == player && boardArray[4] == player && boardArray[8] == player {
            gameOver()
            
        }else if boardArray[6] == player && boardArray[4] == player && boardArray[2] == player {
            gameOver()
            
        }else{
            print("isThereAWinner = NO WINNER!")
        }
    }
    
    func gameOver() {
        print("GAME OVER")
        // Hoppa till en annan sida.
    }
    
    func resetGame() {
        
        
    }
    
}
