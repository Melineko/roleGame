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
    
    
    func start() {
        player1.createTeams(player1Team: player1.team)
        player2.createTeams(player1Team: player1.team)
        
        displayTeams()
    }
    
    
    //= Afficher les équipes =
    func displayTeams() {
        print("🏴‍☠️===== Team player 1 =====🏴‍☠️")
        for eachCharacterP1 in player1.team {
            print("=> \(eachCharacterP1.name) --> \(eachCharacterP1.type)\n")
        }
        print("🏴‍☠️===== Team player 2 =====🏴‍☠️")
        for eachCharacterP2 in player2.team {
            print("=> \(eachCharacterP2.name) --> \(eachCharacterP2.type)\n")
        }
    }
    
    
    func startBattle() {
        
    }
    
    func displayWinner() {
        
    }
    
    
    
    
}//fin classe Game
