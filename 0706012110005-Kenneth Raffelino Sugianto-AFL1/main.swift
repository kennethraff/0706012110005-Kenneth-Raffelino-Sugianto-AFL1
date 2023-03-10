//
//  main.swift
//  0706012110005-Kenneth Raffelino Sugianto-AFL1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

var openingInput: String = "h"
var statsInput: String = "c"
var nameInput : String = ""
var choiceInput : String = "r"
var enterInput : String = "r"
var userHP : Int = 100
var enemyHP : Int = 1000
var userMP : Int = 50
var potions : Int = 20
var potionsInput : String = ""


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

journeyScreen()

func journeyScreen(){
    while(choiceInput != "q"){
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
                playerStats()
            
            } else if (choiceInput.caseInsensitiveCompare("h") == .orderedSame){
                print("you chose H")
                healPotion()
                
            }else if (choiceInput.caseInsensitiveCompare("h") == .orderedSame){
                print("you chose F")
                trollScreen()
            }else if (choiceInput.caseInsensitiveCompare("h") == .orderedSame){
                print("you chose M")
            } else if (choiceInput.caseInsensitiveCompare("q") == .orderedSame){
                print("Thankyou for playing")
                break
            }
    }
}

func playerStats(){
    
        print("\nPlayer name: \(nameInput)")
        print("HP : \(userHP)/100")
        print("MP : \(userMP)/50")
        print("\nMagic :\n- Physical Attack. No mana required. Deal 5pt of damage.\n- Meteor. Use 15pt of MP. Deal 50pt of damage.\n- Shield. Use 10pt of MP. Block enemy's attack in 1 turn.\nItems :\n- Potion x10. Heal 20pt of your HP.\n- Elixir x5. Add 10pt of your MP.")
    print("Click [return] to go back")
        statsInput = readLine()!
        switch statsInput{
        case "" :
            journeyScreen()
        default:
            print("Click enter")
            playerStats()
        }
    
}

func healPotion(){
    print("Your HP is \(userHP).")
    print("You have \(potions) Potions")
    
    print("Are you sure want to use 1 potion to heal wound? [Y/N]")
    potionsInput = readLine()!.lowercased()
    switch potionsInput{
    case "y" :
        if (potions>0){
            if(userHP<100){
                userHP=userHP+20
                if (userHP>=100){
                    userHP=100
                    print("Your HP is now full")
                }
                potions = potions-1
                print("You used 1 potion, you have")
            }else {
                print("Your HP still full")
                print("Press[return] to go back")
                
                var hpFull = readLine()!
                switch hpFull{
                case "":
                    journeyScreen()
                default:
                    print("Click enter")
                }
            }
            
            print("Your HP now: \(userHP)")
            print("You have \(potions) potions left.")
        }else{
            print("You don't have any potion left. Be careful of your next journey.")
        }
        
    case "n":
        print("Okay returning..")
        break
    default:
        print("Press Y/N only")
    }
    
}

func trollScreen(){
    
    print("As you enter the forest, you feel a sense of unease wash over you.")
        print("Suddenly, you hear the sound of twigs snapping behind you. You quickly spin around, and find a Troll emerging    from the shadows.")
        
        print("""
        \n😈Name: Troll x1
        😈Health: \(enemyHP)
        """)
        
        print("""
        Choose your action:
        [1] Physical Attack. No mana required. Deal 5pt of damage.
        [2] Meteor. Use 15pt of MP. Deal 50pt of damage.
        [3] Shield. Use 10pt of MP. Block enemy's attack in 1 turn.
        
        [4] Use Potion to heal wound.
        [5] Scan enemy's vital.
        [6] Flee from battle.
        
        Your choice?
        """)
}

func choosenH(){
    
}

func choosenF(){
    
}
func choosenM(){
    
}
