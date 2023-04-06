//
//  monster.swift
//  0706012110005-Kenneth Raffelino Sugianto-AFL1
//
//  Created by MacBook Pro on 05/04/23.
//

import Foundation
class monster: enemy {
    var monsterAttack: Int
    var monsterHealth: Int
    var monsterName: String
    var monsterType: String
    var monsterDescription = ""
    var printMonster: String {
        return """
            Monster : \(monsterName) \(monsterType)
            Health : \(monsterHealth)
            """
    }

    init(monsterAttack: Int, monsterHealth: Int, monsterName: String,monsterType: String, monsterDescription: String = "") {
        self.monsterAttack = monsterAttack
        self.monsterHealth = monsterHealth
        self.monsterName = monsterName
        self.monsterType = monsterType
        self.monsterDescription = monsterDescription
    }

    func vsBoss(chance: Int) {
        if chance > 75 {
            monsterAttack = Int.random(in: 10...20)
            monsterHealth = 2000
            monsterType = "[Boss]"
        } else {
            monsterAttack = Int.random(in: 5...10)
            monsterHealth = 500
            monsterType = "[Normal]"
        }
    }

    func enemyTurn(player: user) {
        print("The Enemy \(monsterName) \(monsterType) attack! It deals \(monsterAttack)")
        User.userHP -= monsterAttack
    }

    func enemyWin(player: user) {
        print("The Enemy \(monsterName) \(monsterType) has defeated you...")
        print("Returning you to the main menu")
        User.userHP = 20
        User.userMP = 10
        User.multiplier = 1
    }
}

