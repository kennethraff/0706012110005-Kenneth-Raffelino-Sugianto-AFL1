//
//  skill.swift
//  0706012110005-Kenneth Raffelino Sugianto-AFL1
//
//  Created by MacBook Pro on 05/04/23.
//

import Foundation
class skill {
    var skillName: String
    var mpUsage: Int

    init(skillName: String, mpUsage: Int) {
        self.skillName = skillName
        self.mpUsage = mpUsage
    }
        
    func useSKill(player: user, monster: monster){
        User.userMP -= mpUsage
        }
}
