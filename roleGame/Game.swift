//
//  Game.swift
//  roleGame
//
//  Created by Melissa Briere on 24/05/2021.
//

import Foundation

class Game {
    
    func start() {
        
    }
    
    func createTeams() {
        for creationTeam in 1...3 {
            
        print("Player 1 choose your first team character :"
            + "\n1.  Pirate"
            + "\n2.  Jailer"
            + "\n3.  Witch"
            + "\n4.  Fishman"
            + "\n5.  Sorcerer"
            + "\n6.  Mate")

        if let characterChoice = readLine() {
            switch characterChoice {
                case "1":
                    print("Name your Pirate : ")
                    pirate.name = readLine()
                    player1.charactersChoosen.append(pirate.name)
                    
                case "2":
                    print("Name your Jailer : ")
                case "3":
                    print("Name your Witch : ")
                case "4":
                    print("Name your Fishman : ")
                case "5":
                    print("Name your Sorcerer : ")
                case "6":
                    print("Name your Mate : ")
            default :
                print("Please choose a character in the list")
        }
        }
        }
    }
    
    func startBatlle() {
        
    }
    func displayWinner() {
        
    }
}
