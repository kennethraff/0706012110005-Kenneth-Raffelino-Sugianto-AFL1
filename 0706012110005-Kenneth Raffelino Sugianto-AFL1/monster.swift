//
//  monster.swift
//  0706012110005-Kenneth Raffelino Sugianto-AFL1
//
//  Created by MacBook Pro on 05/04/23.
//

import Foundation
class monster: enemy {
    var monsterHit: Int
    var monsterHP: Int
    var monsterName: String
    var monsterType: String
    var monsterDescription = ""
    var printMonster: String {
        return """
            Monster : \(monsterName) \(monsterType)
            Health : \(monsterHP)
            """
    }

    init(monsterHit: Int, monsterHP: Int, monsterName: String,monsterType: String, monsterDescription: String = "") {
        self.monsterHit = monsterHit
        self.monsterHP = monsterHP
        self.monsterName = monsterName
        self.monsterType = monsterType
        self.monsterDescription = monsterDescription
    }

    func vsBoss(chance: Int) {
        if chance > 90 {
            monsterHit = 15
            monsterHP = 2000
            monsterType = "[Boss]"
        } else {
            monsterHit = 10
            monsterHP = 500
            monsterType = "[Normal]"
        }
    }

    func enemyAttack(player: user) {
        print("The Enemy \(monsterName) \(monsterType) attack! It deals \(monsterHit)")
        User.userHP -= monsterHit
    }

    func enemyWin(player: user) {
        print("The Enemy \(monsterName) \(monsterType) has defeated you...")
        print("Returning you to the main menu")
        User.userHP = 20
        User.userMP = 10

    }
    
}

