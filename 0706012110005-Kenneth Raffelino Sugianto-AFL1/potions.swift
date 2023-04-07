//
//  potions.swift
//  0706012110005-Kenneth Raffelino Sugianto-AFL1
//
//  Created by MacBook Pro on 27/03/23.
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
        User.healP -= 1
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
        User.elixirP -= 1
        User.userMP += 10
    }
}
