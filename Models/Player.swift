//
//  Player.swift
//  RowGame
//
//  Created by Toni Löf on 2021-11-23.
//

import Foundation

class Player  {
    
    let playerID: Int
    var playerName: String
    var playerScore: Int
    let playerImage: String
    
    init(playerID: Int, playerName: String = "Default", playerImage:String, playerScore: Int = 0) {
        
        self.playerID = playerID
        self.playerName = playerName
        self.playerImage = playerImage
        self.playerScore = playerScore
        
    }
    
//    init(playerID: Int, playerName: String, playerImage:String, playerScore: Int = 0) {
//        
//        self.playerID = playerID
//        self.playerName = playerName
//        self.playerImage = playerImage
//        self.playerScore = playerScore
//        
//    }
    
    func addWinToScore(){
        playerScore += 1
        
    print("\(playerName) score: \(playerScore)")
        
    }
    
}
