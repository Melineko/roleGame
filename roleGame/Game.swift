//
//  Game.swift
//  roleGame
//
//  Created by Melissa Briere on 24/05/2021.
//

import Foundation

class Game {
    
    let player1 = Player(name: "<< Joueur 2 >>")
    
    let player2 = Player(name: "<< Joueur 2 >>")
    
    func start() {
        createTeams()
    }
    
    func createTeams() {
            
            print("Player 1 choose your first team character :"
                    + "\n1.  Pirate"
                    + "\n2.  Géolier"
                    + "\n3.  Sorcière"
                    + "\n4.  Pêcheur"
                    + "\n5.  Mage"
                    + "\n6.  Mouissaillon")
            
            if let characterChoice = readLine() {
                switch characterChoice {
                case "1":
                    print("Nomme ton Pirate : ")
                    if let inputPirateName = readLine(){
                      print("Bienvenue à bord \(inputPirateName) le pirate !")
                        player1.characters.append("\(inputPirateName)")
                    }
                    
                case "2":
                    print("Nomme ton géolier : ")
                    if let inputJailerName = readLine(){
                    print("Bienvenue à bord \(inputJailerName) le géolier !")
                    }
                case "3":
                    print("Nomme ta sorcière : ")
                    if let inputWitchName = readLine(){
                    print("Bienvenue à bord \(inputWitchName) la sorcière !")
                    }
                case "4":
                    print("Nomme ton pêcheur : ")
                    if let inputFishmanName = readLine(){
                    print("Bienvenue à bord \(inputFishmanName) le pêcheur !")
                    }
                case "5":
                    print("Nomme ton mage : ")
                    if let inputSorcererName = readLine(){
                    print("Bienvenue à bord \(inputSorcererName) le mage !")
                    }
                case "6":
                    print("Nomme ton moussaillon : ")
                    if let inputMateName = readLine(){
                    print("Bienvenue à bord \(inputMateName) le moussaillon !")
                    }
                default :
                    print("Choisis un personnage de la liste en tapant son numéro.")
                }
            }
        
    }
    
    func startBattle() {
        
    }
    
    func displayWinner() {
        
    }
}

