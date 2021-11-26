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
            setPlayerMark(arrayNr: arrayNr, playerNr: playerActive)
            return true
        }else{
            print("Invalid move!")
            return false
        }
    }
    
    func setPlayerMark(arrayNr: Int, playerNr: Int) {
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
        return true
        
    }
    
    
    func isThereAWinner(player: Int) {
        print("isThereAWinner running!")
        if boardArray[0] == player && boardArray[1] == player && boardArray[2] == player,
           boardArray[3] == player && boardArray[4] == player && boardArray[5] == player,
           boardArray[6] == player && boardArray[7] == player && boardArray[8] == player,
           boardArray[0] == player && boardArray[3] == player && boardArray[6] == player,
           boardArray[1] == player && boardArray[4] == player && boardArray[7] == player,
           boardArray[2] == player && boardArray[5] == player && boardArray[8] == player,
           boardArray[0] == player && boardArray[4] == player && boardArray[8] == player,
           boardArray[6] == player && boardArray[4] == player && boardArray[2] == player
        {
            print("Player\(player) won!")
        }else{
            print("isThereAWinner = NO WINNER!")
        }
        
    }
    
    func resetGame() {
        
        
    }
    
}
