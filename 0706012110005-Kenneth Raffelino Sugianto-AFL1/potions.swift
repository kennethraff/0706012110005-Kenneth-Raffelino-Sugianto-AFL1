//
//  potions.swift
//  0706012110005-Kenneth Raffelino Sugianto-AFL1
//
//  Created by MacBook Pro on 05/04/23.
//

import Foundation

class potions {
    var potionsName: String
    init(potionsName: String) {
        self.potionsName = potionsName
    }
}

class healpotion : potions{
    var heal: Int
    init(potionsName:String,heal: Int) {
        self.heal = heal
        super.init(potionsName: potionsName)
    }
    func usePotion(player:user){
        heal -= 1
        User.userHP += 20
        
    }
}
class elixirpotion : potions{
    var elixir: Int
    init(potionName:String,elixir: Int) {
        self.elixir = elixir
        super.init(potionsName: potionName)
    }
    func usePotion(player:user){
        elixir -= 1
        User.userMP += 10
    }
}
