//
//  Game.swift
//  roleGame
//
//  Created by Melissa Briere on 24/05/2021.
//

import Foundation

class Game {
    
    // =Joueur1=
    let player1 = Player(name: "<< Joueur 1 >>")
    
    // =Joueur2=
    let player2 = Player(name: "<< Joueur 2 >>")
    // Team joueur 2
    
    // = Personnages disponibles =
    let pirateAvailable = Pirate()
    let jailerAvailable = Jailer()
    let witchAvailable = Witch()
    let fishmanAvailable = Fishman()
    let sorcererAvailable = Sorcerer()
    let mateAvailable = Mate()
    
    
    
    
    func start() {
        player1.createTeams(player: player1)
        player2.createTeams(player: player2)
        displayTeams()
    }
    
    
    
    //= Afficher les équipes =
    func displayTeams() {
        for eachCharacterP1 in player1.team {
            print("\(eachCharacterP1.name)")
        }
        for eachCharacterP2 in player2.team {
            print("\(eachCharacterP2.name)")
        }
    }
    
    
    func startBattle() {
        
    }
    
    func displayWinner() {
        
    }
    
    
    
    
}//fin classe Game
