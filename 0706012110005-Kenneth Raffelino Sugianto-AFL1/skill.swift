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
    var skillDesc: String
    var printSKill: String{
        return
        """
        - \(skillDesc)
        """
    }
    
    init(skillName: String, mpUsage: Int, skillDesc: String) {
        self.skillName = skillName
        self.mpUsage = mpUsage
        self.skillDesc = skillDesc
    }
        
    func useSKill(player: user, monster: monster){
        User.userMP -= mpUsage
        }
}
