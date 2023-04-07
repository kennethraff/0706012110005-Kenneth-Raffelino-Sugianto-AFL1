//
//  user.swift
//  0706012110005-Kenneth Raffelino Sugianto-AFL1
//
//  Created by MacBook Pro on 28/03/23.
//

import Foundation

struct user{
    var userName: String
    var userHP: Int
    var userMP : Int

    var healP: Int
    var elixirP:Int
    
    init(userName: String, userHP: Int, userMP: Int, healP:Int,elixirP:Int) {
        self.userName = userName
        self.userHP = userHP
        self.userMP = userMP

        self.healP = healP
        self.elixirP = elixirP
    }
    mutating func getPlayerStats(userName: String, userHP: Int, userMP: Int){
           print("\nPlayer name : \(userName)")
           
           print("\n\(userHP)/100")
           print("\(userMP)/50")
           
           print("\nMagic:\n-Physical Attack. No mana required. Deal 5pt of damage.\n- Meteor. Use 15pt of MP. Deal 50pt of damage.\n- Shield. Use 10pt of MP. Block enemy's attack in 1 turn.")
           
           print("""
           \nItems:
           - Potion \(healP) Left!. Heal 20pt of your HP.
           - Elixir \(elixirP) Left!. Add 10pt of your MP.
           """)
       }
       
       mutating func fleeBattle() {
           print("You Chose Flee Battle")
           print("You feel that if you don't escape soon, you won't be able to continue the fight.")
           print("You look around frantically, searching for a way out. You sprint towards the exit, your heart pounding in your chest.")
           print("You're safe, for now.")
           
           print("Press [return] to continue:")
           
       }
       
       mutating func playerWin() {
           print("You killed the *enemy name*, great job!")
       }
}
