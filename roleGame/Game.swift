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
    
   
    //=== START ===
    func start() {
        player1.createTeams(player1Team: player1.team)
        displayTeams(player: player1)
        
        player2.createTeams(player1Team: player1.team)
        displayTeams(player: player2)
        
        startBattle()
    }
    
    
    
    //====== FONCTION Afficher les équipes ======
    func displayTeams(player: Player) {
        print("🏴‍☠️===== Equipage du \(player.name) =====🏴‍☠️\n")
        for eachCharacterP in player.team {
            print("=> \(eachCharacterP.presentation()) \n"
            + "----------------------------------------\n\n")
        }
    }//fin fonction displayTeams()
    
    
    
    
    // === FONCTION lancement de la bataille ===
    func startBattle() {
        let thePlayers: [Player] = [player1, player2]
        
        repeat {
            for echPlayer in thePlayers{
                turnOfPlayer(player: echPlayer)
            }
        } while(player1.cumulLife(player: player1)>0 || player2.cumulLife(player: player2)>0)
        
        print("Tout votre équipage a trépassé.")
    }// fin fonction startBattle()
    
    
    
    
    
    func displayWinner() {
        
    }
    
    
    
    
    //====== FONCTION Joue un tour ======
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
        print("\nSur qui \(emitter.name) doit agir ? (Tapes son numéro ou sa lettre)\n"
         + "#=========================#         #=========================#\n"
         + "    Equipage du Joueur 1                Equipage du Joueur 2\n"
         + "1.  \(player1.team[0].name) : \(player1.team[0].type)                  A.  \(player2.team[0].name) : \(player2.team[0].type)\n"
         + "2.  \(player1.team[1].name) : \(player1.team[1].type)                  B.  \(player2.team[1].name) : \(player2.team[1].type)\n"
         + "3.  \(player1.team[2].name) : \(player1.team[2].type)                  C.  \(player2.team[2].name) : \(player2.team[2].type)\n"
         + "    =———————————————-=                  =———————————————-=\n"
         + "#=========================#         #=========================#\n"
        
        )}//fin if let emitter
        
        if let receiverChoice = readLine() {
            switch receiverChoice {
            case "1":
                player.receiver = player1.team[0]
            case "2":
                player.receiver = player1.team[1]
            case "3":
                player.receiver = player1.team[2]
            case "A":
                player.receiver = player2.team[0]
            case "B":
                player.receiver = player2.team[1]
            case "C":
                player.receiver = player2.team[2]
                
            default :
                print("--- Choisis un personnage de ton équipe ou de l'équipe adverse. ---")
            }
        }//fin if let receiverChoice readline()
        if let receiver = player.receiver{
            if let emitter = player.emitter{
            emitter.actionOn(characterReceiver: receiver)
               print ("\(emitter.name) s'est occupé de \(receiver.name). --> Points de vie restants pour \(receiver.name) : \(receiver.life)\n")
            }
        }
        
        
        
    }//fin fonction turnOfPlayer()
    
    
}//fin classe Game
