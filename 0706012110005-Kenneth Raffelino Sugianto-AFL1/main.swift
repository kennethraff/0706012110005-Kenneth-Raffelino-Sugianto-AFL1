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

var User = user(userName: nameInput, userHP: 100, userMP: 50, multiplier: 1, healP: 10, elixirP: 5)
var trollHP : Int = 1000
var golemHP : Int = 1000
var potionsInput : String = ""
var actionInput : String = ""
var userElixir : Int = 5
var enemyy = monster(monsterAttack: 0, monsterHealth: 0, monsterName: "", monsterType: "")


var skills : [String] = []
skills.append("Physical Attack")
skills.append("Meteor")
skills.append("Shield")

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
        while nameInput.isEmpty || nameInput.rangeOfCharacter(from: CharacterSet.letters.inverted) != nil {
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
               
                print("As you enter the forest, you feel a sense of unease wash over you.")
                print("Suddenly, you hear the sound of twigs snapping behind you. You quickly spin around, and find a Troll emerging from the shadows.")
                enemyy.monsterDescription = "\nAs you enter the forest, you feel a sense of unease wash over you. Suddenly, you hear the sounds of twigs snapping behind you. You quickly spin around and find a troll emerging from the shadows"
                enemyy.monsterName = "Troll"
                var randomize = Int.random(in: 1...100)
                enemyy.vsBoss(chance: randomize)
                print("")
                print(enemyy.printMonster)
                warScreen()
            }else if (choiceInput.caseInsensitiveCompare("m") == .orderedSame){
                print("you chose M")
                
                print("As you make your way through the rugged mountain terrain, you can feel the chill of the wind biting at your skin.")
                print("Suddenly, you hear the sound that makes you freeze in your tracks. That's when you see it - a massive, snarling Golem emerging from the shadows.")
                enemyy.monsterDescription = "\nAs you make your way through the rugged mountain terrain, you can feel the chill of wind biting your skin. Suddenly, you hear a sound that makes you freeze in the tracks. That's when you see it -  a massive snarling Golem emerging from the shadows."
                enemyy.monsterName = "Golem"
                var randomize = Int.random(in: 1...100)
                enemyy.vsBoss(chance: randomize)
                print("")
                print(enemyy.printMonster)
                warScreen()
            } else if (choiceInput.caseInsensitiveCompare("q") == .orderedSame){
                print("Thankyou for playing")
                break
            }
    }
}
//player stats
func playerStats(){
        print("\nPlayer name: \(nameInput)")
    print("HP : \(User.userHP)/100")
    print("MP : \(User.userMP)/50")
        print("\nMagic :\n- Physical Attack. No mana required. Deal 5pt of damage.\n- Meteor. Use 15pt of MP. Deal 50pt of damage.\n- Shield. Use 10pt of MP. Block enemy's attack in 1 turn.\nItems :\n- Potion x10. Heal 20pt of your HP.\n- Elixir x5. Add 10pt of your MP.")
    print("Click [return] to go back")
        statsInput = readLine()!
        switch statsInput{
        case "" :
            journeyScreen()
        default:
            print("Click [ENTER]")
            playerStats()
        }
    
}
//potion buat yang chose awal
func healPotion(){
    print("Your HP is \(User.userHP).")
    print("You have \(User.healP) Potions")
    
    print("Are you sure want to use 1 potion to heal wound? [Y/N]")
    potionsInput = readLine()!.lowercased()
    switch potionsInput{
    case "y" :
        if (User.healP>0){
            if(User.userHP<100){
                User.userHP=User.userHP+20
                if (User.userHP>=100){
                    User.userHP=100
                    print("Your HP is now full")
                }
                User.healP = User.healP-1
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
            
            print("Your HP now: \(User.userHP)")
            print("You have \(User.healP) potions left.")
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
        \n😈Name: \(enemyy.monsterName)
        😈Health: \(enemyy.monsterHealth)
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
            enemyy.monsterHealth =  enemyy.monsterHealth - 5
            User.userHP -= 10
            
            if User.userHP <= 0 {
                print("Player dead, you lose, returning to home")
                User.userHP = 100
                User.userMP = 50
                journeyScreen()
                
            } else {
                print("You attacked the \(enemyy.monsterName), you dealt 5pt of damage")
                
                if enemyy.monsterHealth > 0 {
                    warScreen()
                } else {
                    print("You killed the monster. Great job!")
                    enemyy.monsterHealth = 1000
                }
            }
            
        case "2":
            if User.userHP <= 0 {
                print("Player dead, you lose, returning to home")
                User.userHP = 100
                User.userMP = 50
                journeyScreen()
                
            } else {
                if User.userMP >= 15 {
                    print("You attacked the \(enemyy.monsterName) with meteor")
                    User.userMP = User.userMP - 15
                    enemyy.monsterHealth = enemyy.monsterHealth - 50
                    User.userHP -= 10
                    if User.userHP <= 0 {
                        print("Player dead, you lose, returning to home")
                        journeyScreen()
                        User.userHP = 100
                    } else {
                        print("You attacked the \(enemyy.monsterName), you dealt 50pt of damage, use 15pt of MP")
                        
                        if  enemyy.monsterHealth > 0 {
                            warScreen()
                        } else {
                            print("You killed the monster. Great job!")
                            enemyy.monsterHealth = 1000
                        }
                    }
                } else{
                    print("Your MP is not enough to use this action")
                }
            }
            
            
        case "3":
            print("Using shield, use 10pt MP")
            User.userMP = User.userMP - 10
            warScreen()
        case "4":
            print("Your HP is \(User.userHP).")
            print("You have \(User.healP) Potions")
            
            healingv2()
        case "5":
            print("Enemy Name:\(enemyy.monsterName)")
            print("Enemy HP:\(enemyy.monsterHealth)")
            print("You also using 5pt of HP for scanning enemy")
            User.userHP -= 5
        case "6":
            User.fleeBattle()
            let fleeInput = readLine()!
            switch fleeInput {
            case "" :
                enemyy.monsterHealth = 1000
                journeyScreen()
            default :
                print("Just click enter.")
                User.fleeBattle()
            }
        default:
            print("Invalid choice, pick again.")
            warScreen()
        }
    
    
}
////buat exit
//func exitBattle() {
//    print("You feel that if you don't escape soon, you won't be able to continue the fight.")
//        print("You look around frantically, searching for a way out. You sprint towards the exit, your heart pounding in your chest.")
//        print("You're safe, for now.")
//        print("Press [return] to continue.")
//        let fleeInput = readLine()!
//        switch fleeInput {
//        case "" :
//            journeyScreen()
//        default :
//            print("Just click enter.")
//            enemyHP = 1000
//            exitBattle()
//        }
//}

//buat hiling yg di dalam
func healingv2 (){
    print("Are you sure want to use 1 potion to heal wound? [Y/N]")
    potionsInput = readLine()!.lowercased()
    switch potionsInput{
    case "y" :
        if (User.healP>0){
            if(User.userHP<100){
                User.userHP=User.userHP+20
                if (User.userHP>=100){
                    User.userHP=100
                    print("Your HP is now full")
                }
                User.healP = User.healP-1
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
            
            print("Your HP now: \(User.userHP)")
            print("You have \(User.healP) potions left.")
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
        if User.userMP > 50 {
            print("Your MP is full")
        } else{
            userElixir -= 1
            User.userMP += 10
            print("You using 1 elixir, \(userElixir) more left!")
            print("Your MP is now at \(User.userMP)")
        }
        
        
    }
}
//buat restart
func restartt (){
    User.userHP = 100
    trollHP = 1000
    golemHP = 1000
    User.userMP  = 50
    User.healP  = 20
    enemyy.monsterHealth  = 1000
    userElixir  = 5
    nameInput = ""
    awalPol()
}
