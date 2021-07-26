//
//  Game.swift
//  roleGame
//
//  Created by Melissa Briere on 24/05/2021.
//

import Foundation

class Game {
    
   var players: [Player] = [Player(name: "< JOUEUR 1 >"),  Player(name: "< JOUEUR 2 >")]
   var numberOfTurns = 0
   
    
    //=== START ===
    func start() {
        titleGraph()
        for player in players {
            player.createTeams(player1Team: players[0].team)
            player.displayTeam()
            arrowDraw()
        }
        startBattle()
        drawReaper()
        displayWinner()
    }//=============
    
    
    
    // === START THE BATTLE ===
    func startBattle() {
        repeat {
            turnOfPlayer()
            players.swapAt(0, 1)
            numberOfTurns += 1
        } while isAllCharacterAlive() && !isStayOnlyHealther()
        
        print("Tout votre équipage a trépassé.")
    }//=========================
    
    
    
    // === LIFE TEAM CHECKING ===
    private func isAllCharacterAlive() -> Bool {
        for player in players {
            if player.allTeamLife <= 0 {
                return false
            }
        }
        return true
    }//===========================
    
    
    
    // === ONLY HEALTHER STAY CHECKING ===
    private func isStayOnlyHealther() -> Bool {
        for player in players {
            for character in player.team {
                if (character.fonction == "Soigneur") && player.allTeamLife == character.life {
                    return true
                }
            }
        }
        return false
    }//====================================
    
    
    
    //=== LIFE CHARACTER CHECKING ===
    func isCharacterAlive (character: Character) -> Bool {
        if character.life <= 0 {
            character.life = 0
            print("\(character.name) est mort(e).")
            return false
        }
        return true
    }//==============================
    
    
    
    //=== DISPLAY WINNER STATISTICS ===
    func displayWinner() {
        let winner: Player = players[1]
        print("\n==>   L'EQUIPAGE \(winner.name) REMPORTE LA BATAILLE !  <==\n")
        print("»~._.~\"~._.~\"~._.~\"~._.~\n")
        print("Nombre de tours : \(numberOfTurns)")
        winner.displayTeam()
        print("»~._.~\"~._.~\"~._.~\"~._.~")
    }//=========================
    
    
    
    //=== ONE TURN ===
    func turnOfPlayer() {
        //let randomNumb = Int.random(in: 2...10)
        print("\n\(players[0].name) Quel équipier doit agir ? (Tapes son numéro)\n____________")
        for i in 1...players[0].team.count {
            print("\(i). \(players[0].team[i-1].presentation())")
        }
        // is emitter don't nil and alive
        if let emitter = players[0].selectCharacter() {
            if isCharacterAlive(character: emitter) {
                // maybe he finds a chest
                if numberOfTurns == Int.random(in: 2...10) {
                    emitter.findingChest(character: emitter)
                }
          // make action on receiver
          actOnReceiver(emitter: emitter)
            } else {
                turnOfPlayer()
            }
        }// end if let emitter
    }//================
    
    
    
    
    //=== ACTION ON RECEIVER ===
    func actOnReceiver(emitter: Character) {
        
        print("\n\(players[0].name), sur quel personnage veux-tu agir ? (Tapes son numéro) :\n____________")
        
        // calculate var for index
        var indexPlayer: Int {
            get {
                return emitter.fonction == "Combattant" ? 1 : 0
            }
        }
        // player team or player opposite team listing
        for i in 1...players[indexPlayer].team.count {
            print("\(i). \(players[indexPlayer].team[i-1].presentation())")
        }
        // is receiver don't nil and alive
        if let receiver = players[indexPlayer].selectCharacter() {
            if isCharacterAlive(character: receiver) {
              // make action on receiver
              emitter.actionOn(characterReceiver: receiver)
                if isCharacterAlive(character: receiver) {
                    print ("\(emitter.name) s'est occupé de \(receiver.name). --> Points de vie restants pour \(receiver.name) : \(receiver.life)\n")}
             } else {
                actOnReceiver(emitter: emitter)
            }
          }// if let receiver
    }//==========================
    
    
    
    
}//=== END GAME CLASS ===
