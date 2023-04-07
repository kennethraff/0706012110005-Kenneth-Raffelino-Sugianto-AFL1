//
//  shield.swift
//  0706012110005-Kenneth Raffelino Sugianto-AFL1
//
//  Created by MacBook Pro on 06/04/23.
//

import Foundation
class shield: skill{
    var turn: Int
        
        init(skillName: String, mpUsage: Int, turn: Int) {
            self.turn = turn
            super.init(skillName: skillName, mpUsage: mpUsage)
        }
    
    
    override func useSKill(player: user, monster: monster) {
        super.useSKill(player: player, monster: monster)
        print("You use \(skillName)")
        turn = 1
        print("Shield Activated, until next turn")
    }
    
    func isUp(){
        print("\nYou block the enemy attack turn")
        turn -= 1
        warScreen()
    }
    
}
