//
//  main.swift
//  0706012110005-Kenneth Raffelino Sugianto-AFL1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation
//inisiasi
var openingInput: String = "h"
var statsInput: String = "c"
var nameInput : String = ""
var choiceInput : String = "r"
var enterInput : String = "r"
var userHP : Int = 100
var trollHP : Int = 1000
var golemHP : Int = 1000
var userMP : Int = 50
var potions : Int = 20
var potionsInput : String = ""
var actionInput : String = ""
var enemyName : String = ""
var enemyHP : Int = 1000
var userElixir : Int = 5

var skills : [String] = []
skills.append("Physical Attack")
skills.append("Meteor")
skills.append("Shield")

var enemy : [String] = []
enemy.append("Troll")
enemy.append("Golem")

//welkam page
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

awalPol()

func awalPol(){
    //input nama
    while(nameInput.isEmpty){
        print("\nMay I know your name, a young wizard?")
        nameInput = readLine()!
        
        //Biar cuman bisa input huruf
        while nameInput == nil || nameInput.rangeOfCharacter(from: CharacterSet.letters.inverted) != nil {
            print("Invalid input. Please re-enter letters only:")
            nameInput = readLine()!
            
            
        }
    }
        print(" Nice to meet you \(nameInput)")

    journeyScreen()
}

func journeyScreen(){
    while(choiceInput != "q"){
        print("\nFrom here you can...")
        print("\n[C]heck your health and stats")
        print("[H]eal your wounds with potion")
        print("[A]dd MP")
        print("\n...or choose where you want to go")
        print("\n[F]orest of Troll")
        print("[M]ountain of Golem")
        print("[Q]uit game")
        print("[R]estart Game")
        print("Your choice?")
        choiceInput = readLine()!
        
        // sejenis equalIgnoreCase cuman ketemu nya ini
        if (choiceInput.caseInsensitiveCompare("c") == .orderedSame){
                print("you chose C")
                playerStats()
            
            } else if (choiceInput.caseInsensitiveCompare("h") == .orderedSame){
                print("you chose H")
                healPotion()
                
            }
            else if (choiceInput.caseInsensitiveCompare("a") == .orderedSame){
                print("you chose A")
                addElixir()
            
            }
            else if (choiceInput.caseInsensitiveCompare("r") == .orderedSame){
                print("you chose R")
                restartt()
        
            }else if (choiceInput.caseInsensitiveCompare("f") == .orderedSame){
                print("you chose F")
                for loopname in enemy{
                    if loopname == "Troll" {
                        print("As you enter the forest, you feel a sense of unease wash over you.")
                        print("Suddenly, you hear the sound of twigs snapping behind you. You quickly spin around, and find a Troll emerging from the shadows.")
                        enemyName = loopname
                        warScreen()
                    }
                }
            }else if (choiceInput.caseInsensitiveCompare("m") == .orderedSame){
                print("you chose M")
                for loopname in enemy{
                    if loopname == "Golem" {
                        print("As you make your way through the rugged mountain terrain, you can feel the chill of the wind biting at your skin.")
                        print("Suddenly, you hear the sound that makes you freeze in your tracks. That's when you see it - a massive, snarling Golem emerging from the shadows.")
                        enemyName = loopname
                        warScreen()
                    }
                }
            } else if (choiceInput.caseInsensitiveCompare("q") == .orderedSame){
                print("Thankyou for playing")
                break
            }
    }
}
//player stats
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
//potion buat yang chose awal
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
        
        //kalo ga pencet y ato n ngelooooop
    default:
        print("Press Y/N only")
        healPotion()
    }
    
}

func warScreen(){
    
    
    
        print("As you enter the forest, you feel a sense of unease wash over you.")
        print("Suddenly, you hear the sound of twigs snapping behind you. You quickly spin around, and find a Troll emerging    from the shadows.")
        
        print("""
        \n😈Name: \(enemyName)
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
        actionInput = readLine()!
        switch actionInput {
        case "1":
            enemyHP = enemyHP - 5
            userHP -= 10
            
            if userHP <= 0 {
                print("Player dead, you lose, returning to home")
                userHP = 100
                userMP = 50
                journeyScreen()
                
            } else {
                print("You attacked the \(enemyName), you dealt 5pt of damage")
                
                if enemyHP > 0 {
                    warScreen()
                } else {
                    print("You killed the monster. Great job!")
                    enemyHP = 1000
                }
            }
            
        case "2":
            if userHP <= 0 {
                print("Player dead, you lose, returning to home")
                userHP = 100
                userMP = 50
                journeyScreen()
                
            } else {
                if userMP >= 15 {
                    print("You attacked the \(enemyName) with meteor")
                    userMP = userMP - 15
                    enemyHP = enemyHP - 50
                    userHP -= 10
                    if userHP <= 0 {
                        print("Player dead, you lose, returning to home")
                        journeyScreen()
                        userHP = 100
                    } else {
                        print("You attacked the \(enemyName), you dealt 50pt of damage, use 15pt of MP")
                        
                        if enemyHP > 0 {
                            warScreen()
                        } else {
                            print("You killed the monster. Great job!")
                            enemyHP = 1000
                        }
                    }
                } else{
                    print("Your MP is not enough to use this action")
                }
            }
            
            
        case "3":
            print("Using shield, use 10pt MP")
            userMP = userMP - 10
            warScreen()
        case "4":
            print("Your HP is \(userHP).")
            print("You have \(potions) Potions")
            
            healingv2()
        case "5":
            print("Enemy Name:\(enemyName)")
            print("Enemy HP:\(enemyHP)")
            print("You also using 5pt of HP for scanning enemy")
            userHP -= 5
        case "6":
            exitBattle()
        default:
            print("Invalid choice, pick again.")
            warScreen()
        }
    
    
}

func exitBattle() {
    print("You feel that if you don't escape soon, you won't be able to continue the fight.")
        print("You look around frantically, searching for a way out. You sprint towards the exit, your heart pounding in your chest.")
        print("You're safe, for now.")
        print("Press [return] to continue.")
        let fleeInput = readLine()!
        switch fleeInput {
        case "" :
            journeyScreen()
        default :
            print("Just click enter.")
            enemyHP = 1000
            exitBattle()
        }
}

func healingv2 (){
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
                
                let hpMax = readLine()!
                switch hpMax{
                case "":
                    warScreen()
                default:
                    print("press enter")
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
        healingv2()
    }
}
//yg A add MP
func addElixir(){
    if userElixir <= 0{
        print("Sorry your elixir ran out")
    } else {
        if userMP > 50 {
            print("Your MP is full")
        } else{
            userElixir -= 1
            userMP += 10
            print("You using 1 elixir, \(userElixir) more left!")
            print("Your MP is now at \(userMP)")
        }
        
        
    }
}
func restartt (){
    userHP = 100
    trollHP = 1000
    golemHP = 1000
    userMP  = 50
    potions  = 20
    enemyHP  = 1000
    userElixir  = 5
    nameInput = ""
    awalPol()
}
