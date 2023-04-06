//
//  shield.swift
//  0706012110005-Kenneth Raffelino Sugianto-AFL1
//
//  Created by MacBook Pro on 06/04/23.
//

import Foundation
class shield: skill{
    var turn: Int
        
        init(skillName: String, mpUsage: Int, skillDesc: String, turn: Int) {
            self.turn = turn
            super.init(skillName: skillName, mpUsage: mpUsage, skillDesc: skillDesc)
        }
    
    override func useSKill(player: user, monster: monster) {
        super.useSKill(player: player, monster: monster)
        print("You use \(skillName)")
        turn = 1
        print("Your shield is up now. It will run out in the next turn")
    }
    
    func isUp(){
        print("\nYou block the enemy's attack for this turn!")
        print("Your shield is gone now!")
        turn -= 1
        warScreen()
    }
    
}
