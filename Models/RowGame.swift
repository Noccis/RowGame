//
//  RowGame.swift
//  RowGame
//
//  Created by Toni Löf on 2021-11-23.
//

import Foundation

class RowGame {
    
  // private
    var boardArray: [Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0]
 
    
    
    func isSpotOpen(arrayNr: Int, playerActive: Int) -> Bool {
    //    print(boardArray)
        if boardArray[arrayNr] == 0 {
            print("isSpotOpen spot is OPEN")
            //setPlayerIntInArray(arrayNr: arrayNr, playerNr: playerActive)
            return true
        }else{
            print("Invalid move!")
            return false
        }
    }
    
    // Ska bara göra en sak
    func setPlayerIntInArray(arrayNr: Int, playerNr: Int) {
        print("setPlayerMark running!")
    boardArray[arrayNr] = playerNr
     /*   if isThereAWinner(player: playerNr) == false {
            
            if isGameOver() == true {
                
                print("setPlayerMark, isGameOver == true")
                
            }
            
        }
      */
        
        
    }
 
    // döp om till Tie
    func isThereATie()-> Bool {
        print("isGameOver running!")
        for spot in boardArray{
            if spot == 0 {
                return false
            }
        }
     //   gameOver()
        return true
        
    }
    
    
    func isThereAWinner(player: Int) -> Bool{
        print("isThereAWinner running!")
      
        if boardArray[0] == player && boardArray[1] == player && boardArray[2] == player {
            print("Player \(player) Won!")
           // gameOver()
            return true
            
        }else if boardArray[3] == player && boardArray[4] == player && boardArray[5] == player {
            print("Player \(player) Won!")
           // gameOver()
            return true
            
        }else if boardArray[6] == player && boardArray[7] == player && boardArray[8] == player {
           // print("Player \(player) Won!")
            gameOver()
            return true
            
        }else if boardArray[0] == player && boardArray[3] == player && boardArray[6] == player {
            print("Player \(player) Won!")
           // gameOver()
            return true
            
        }else if boardArray[1] == player && boardArray[4] == player && boardArray[7] == player {
            print("Player \(player) Won!")
          //  gameOver()
            return true
            
        }else if boardArray[2] == player && boardArray[5] == player && boardArray[8] == player {
            print("Player \(player) Won!")
          //  gameOver()
            return true
            
        }else if boardArray[0] == player && boardArray[4] == player && boardArray[8] == player {
            print("Player \(player) Won!")
          //  gameOver()
            return true
            
        }else if boardArray[6] == player && boardArray[4] == player && boardArray[2] == player {
            print("Player \(player) Won!")
          //  gameOver()
            return true
            
        }else{
            print("isThereAWinner = NO WINNER!")
            return false
        }
    }
    
    func gameOver() {
       
      var pos = -1
        
        for var number in boardArray {
            pos += 1
            number = 10
            boardArray[pos] = number
        
        }
       
     print(boardArray)
        print("GAME OVER")
        
    }
    
    func resetGame(){
        
        var pos = -1
          
          for var number in boardArray {
              pos += 1
              number = 0
              boardArray[pos] = number
          
          }
        
        print("resetGame running. BoardArray:")
        print(boardArray)
       
        
        
    }
    
}
