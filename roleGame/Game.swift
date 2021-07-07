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
    
   
    
    func start() {
        player1.createTeams(player1Team: player1.team)
        displayTeams(player: player1)
        
        player2.createTeams(player1Team: player1.team)
        displayTeams(player: player2)
        
        turnOfPlayer(player: player1)
    }
    
    
    //= Afficher les équipes =
    func displayTeams(player: Player) {
        print("🏴‍☠️===== Equipage \(player.name) =====🏴‍☠️\n")
        for eachCharacterP in player.team {
            print("=> \(eachCharacterP.name) --> \(eachCharacterP.type)\n")
        }
    }
    
    
    func startBattle() {
        
    }
    
    func displayWinner() {
        
    }
    
    
    func turnOfPlayer(player: Player){
        
        print("\(player.name) Quel équipier doit agir ? (Tapes son numéro)"
                + "\n1.  \(player.team[0].presentation())"
                + "\n2.  \(player.team[1].presentation())"
                + "\n3.  \(player.team[2].presentation())")
        
        if let emitterChoice = readLine() {
            switch emitterChoice {
            case "1":
                player.emitter = player.team[0]
            case "2":
                player.emitter = player.team[1]
            case "3":
                player.emitter = player.team[2]
                
            default :
                print("--- Choisis un personnage de la liste. ---")
            }
        }//fin if let readline()
        
        if let emitter = player.emitter {
        print("Sur qui \(emitter.name) doit agir ? (Tapes son numéro ou sa lettre)\n"
         + "#=========================#         #=========================#\n"
         + "    Equipage du Joueur 1                Equipage du Joueur 2\n"
         + "1.  \(player1.team[0].name)                  A.  \(player2.team[0].name)\n"
         + "2.  \(player1.team[1].name)                  B.  \(player2.team[1].name)\n"
         + "3.  \(player1.team[2].name)                  C.  \(player2.team[2].name)\n"
        
        )}
        
        
        
        
    }//fin fonction turnOfPlayer()
    
    
}//fin classe Game
