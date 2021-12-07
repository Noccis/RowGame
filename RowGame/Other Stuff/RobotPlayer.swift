//
//  RobotPlayer.swift
//  RowGame
//
//  Created by Toni Löf on 2021-12-02.
//

class RobotPlayer: Player {
    
    
    
    func randomAvailableNr(game: RowGame) -> Int {
        
        var nr = Int.random(in: 0...8)
        
        while game.isSpotOpen(arrayNr: nr, playerActive: 2) != true {
            
            nr = Int.random(in: 0...8)
        }
                 return nr
    }
    

}
