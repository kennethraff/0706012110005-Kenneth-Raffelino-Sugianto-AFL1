//
//  main.swift
//  0706012110005-Kenneth Raffelino Sugianto-AFL1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

var openingInput: String = "h"
var nameInput : String = ""
var choiceInput : String = "r"
var userHP : Int = 100
var userMP : Int = 50

while(openingInput.isEmpty == false){
    print("Welcome to the world of magic! 🧙‍♂️🧌")
    print("""
        \nYou have been chosen to embark on anepic journey as a young wizard on the path to becoming a master of the
        arcane arts. Your adventures will take you through forests 🌲, mountains , and dungeons , where you will
        face challenges, make allies, and fight enemies
    """)

    print("\nPress [return] to continue:")
    openingInput = readLine()!
    if(openingInput.isEmpty == false){
        print("\nJust click enter")
    }
}


while(nameInput.isEmpty){
    print("\nMay I know your name, a young wizard?")
    nameInput = readLine()!
    
    while nameInput == nil || nameInput.rangeOfCharacter(from: CharacterSet.letters.inverted) != nil {
        print("Invalid input. Please re-enter letters only:")
        nameInput = readLine()!
        
        
    }
}
    print(" Nice to meet you \(nameInput)")

while(choiceInput != "c" && choiceInput != "h" && choiceInput != "q" && choiceInput != "f" && choiceInput != "m"){
    print("\nFrom here you can...")
    print("\n[C]heck your health and stats")
    print("[H]eal your wounds with potion")
    print("\n...or choose where you want to go")
    print("\n[F]orest of Troll")
    print("[M]ountain of Golem")
    print("[Q]uit game")
    print("Your choice?")
    choiceInput = readLine()!
    
    if (choiceInput.caseInsensitiveCompare("c") == .orderedSame){
            print("you chose C")
        
        print("Player name: \(nameInput)")
        print("HP : \(userHP)/100")
        print("MP : \(userMP)/50")
        print("\nMagic :\n- Physical Attack. No mana required. Deal 5pt of damage.\n- Meteor. Use 15pt of MP. Deal 50pt of damage.\n- Shield. Use 10pt of MP. Block enemy's attack in 1 turn.\nItems :\n- Potion x10. Heal 20pt of your HP.\n- Elixir x5. Add 10pt of your MP.")
        break
        
        } else if (choiceInput.caseInsensitiveCompare("h") == .orderedSame){
            print("you chose H")
        }else if (choiceInput.caseInsensitiveCompare("h") == .orderedSame){
            print("you chose F")
        }else if (choiceInput.caseInsensitiveCompare("h") == .orderedSame){
            print("you chose M")
        } else if (choiceInput.caseInsensitiveCompare("q") == .orderedSame){
            print("Thankyou for playing")
            break
        }
}
