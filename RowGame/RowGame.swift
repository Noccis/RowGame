//
//  RowGame.swift
//  RowGame
//
//  Created by Toni Löf on 2021-11-23.
//

import Foundation

class RowGame {
    
    var boardArray: [Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    // Do I need to initiate this when creating object?
    
    
    func placeMarker(row: Int, player: Int)-> Bool {
        
        if boardArray[row] == 0 {
            
            boardArray[row] = player
            
            return true
            
        }else{
            return false
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
