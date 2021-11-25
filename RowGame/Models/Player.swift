//
//  Player.swift
//  RowGame
//
//  Created by Toni Löf on 2021-11-23.
//

import Foundation

class Player  {
    
    let playerID: Int
    let playerName: String
    let playerImage: String
    init(playerID: Int, playerName: String = "Default", playerImage:String) {
        
        self.playerID = playerID
        self.playerName = playerName
        self.playerImage = playerImage
        
    }
    
}
