//
//  hitAttack.swift
//  0706012110005-Kenneth Raffelino Sugianto-AFL1
//
//  Created by MacBook Pro on 06/04/23.
//

import Foundation

class hitAttack: skill{
    var damage: Int
    
        
        init(skillName: String, mpUsage: Int, skillDesc: String, damage: Int) {
            self.damage = damage
            super.init(skillName: skillName, mpUsage: mpUsage, skillDesc: skillDesc)
        }
    
    override func useSKill(player: user, monster: monster) {
        super.useSKill(player: player, monster: monster)
        print("\nYou attack your enemy using Meteor Attack!")
        print("You deal \(damage*User.multiplier) Attack!")
        print("it's very effective!")
        monster.monsterHealth  -= damage*User.multiplier
    }
}
