//
//  enemy.swift
//  0706012110005-Kenneth Raffelino Sugianto-AFL1
//
//  Created by MacBook Pro on 05/04/23.
//

import Foundation
protocol enemy {
    func vsBoss(chance: Int)
    func enemyAttack(player: user)
    func enemyWin(player: user)
   
}
