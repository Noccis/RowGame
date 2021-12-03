//
//  RobotPlayer.swift
//  RowGame
//
//  Created by Toni Löf on 2021-12-02.
//

class RobotPlayer: Player {
    
    
    
    func randomAvailableNr(array: [Int]) -> Int {
        
        var nr = Int.random(in: 0...8)
        
        while array[nr] != 0 {
            
            nr = Int.random(in: 0...8)
        }
        
         return nr
      
    }

}
