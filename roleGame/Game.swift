//
//  Game.swift
//  roleGame
//
//  Created by Melissa Briere on 24/05/2021.
//

import Foundation

class Game {
    
    // Declaration de tous les joueurs
    var players: [Player] = [Player(name: "<< Joueur 1 >>"),  Player(name: "<< Joueur 2 >>")]
   
    
    //=== START ===
    func start() {
        for player in players {
            player.createTeams(player1Team: players[0].team)
            player.displayTeam()
        }
        
        startBattle()
    }
    
    
    // === FONCTION lancement de la bataille ===
    func startBattle() {
        repeat {
            turnOfPlayer()
            players.swapAt(0, 1)
        } while isAllCharacterAlive()
        
        print("Tout votre équipage a trépassé.")
    }// fin fonction startBattle()
    
    private func isAllCharacterAlive() -> Bool {
        for player in players {
            if player.allTeamLife <= 0 {
                return false
            }
        }
        return true
    }
    
    
    
    func displayWinner() {
        
    }
    
    
    
    //====== FONCTION Joue un tour ======
    func turnOfPlayer() {
        print("\n\(players[0].name) Quel équipier doit agir ? (Tapes son numéro)\n____________")
        for i in 1...players[0].team.count {
            print("\(i). \(players[0].team[i-1].presentation())")
        }
        
        // S'assurer que emitter et receiver ne soit pas nil
        if let emitter = players[0].selectCharacter() {
            if isCharacterAlive(character: emitter){
          actOnReceiver(emitter: emitter)
            }//fin du if isCharacterAlive pour emmeteur
            else{
                turnOfPlayer()
            }
        }// fin du if let emitter
    }//fin fonction turnOfPlayer()
    
    
    
    
    //= FONCTION action sur le receveur
    func actOnReceiver(emitter: Character){
        
        print("\n\(players[0].name), sur quel personnage veux-tu agir ? (Tapes son numéro) :\n____________")
        
        // Tuples - pour  adapter l'index du joueur
        var indexPlayer: Int {
            get {
                //L'emeteur est-il un combattant ? alors l'index sera 1 sinon 0
                return emitter.fonction == "Combattant" ? 1 : 0
            }
        }// fin du tuples
        
        //listing de l'équipe du joueur ou de l'équipe adverse pour selectionner un receveur
        for i in 1...players[indexPlayer].team.count {
            print("\(i). \(players[indexPlayer].team[i-1].presentation())")
        }
        
        if let receiver = players[indexPlayer].selectCharacter() {
            if isCharacterAlive(character: receiver){
                
              emitter.actionOn(characterReceiver: receiver)
                if isCharacterAlive(character: receiver){
                    print ("\(emitter.name) s'est occupé de \(receiver.name). --> Points de vie restants pour \(receiver.name) : \(receiver.life)\n")}
             }else{
                actOnReceiver(emitter: emitter)
            }
          }//fin du if let receiver
    }
    
    
    
    
    //= FONCTION Vérification vivant ou mort
    func isCharacterAlive (character: Character) -> Bool{
        if character.life <= 0 {
            print("\(character.name) est mort(e).")
            return false
        }
        return true
    }
    
    
    
}//fin classe Game
