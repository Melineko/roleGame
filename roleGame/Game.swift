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
            print("=> \(eachCharacterP.presentation()) \n")
        }
        print("----------------------------------------\n\n")
    }//fin fonction displayTeams()
    
    
    
    
    // === FONCTION lancement de la bataille ===
    func startBattle() {
        var thePlayers: [Player] = [player1, player2]
        
        repeat {
            
            turnOfPlayer(player: thePlayers[0], oppositePlayer: thePlayers[1])
            thePlayers.swapAt(0, 1)
            
        } while(player1.allTeamLife>0 || player2.allTeamLife>0)
        
        print("Tout votre équipage a trépassé.")
    }// fin fonction startBattle()
    
    
    
    
    
    func displayWinner() {
        
    }
    
    
    
    
    //====== FONCTION Joue un tour ======
    func turnOfPlayer(player: Player, oppositePlayer: Player){
        var emitter = player.team[0]
        var receiver = player.team[1]
        
        print("\(player.name) Quel équipier doit agir ? (Tapes son numéro)")
        for i in 1...player.team.count {
            print("\(i). \(player.team[i-1].presentation())")
        }

        
        if let emitterChoice = readLine() {
            switch emitterChoice {
            case "1":
                if isCharacterAlive(character: emitter){
                    emitter = player.team[0]}else{
                        turnOfPlayer(player: player, oppositePlayer: oppositePlayer)
                    }
            case "2":
                if isCharacterAlive(character: emitter){
                    emitter = player.team[1]}else{
                        turnOfPlayer(player: player, oppositePlayer: oppositePlayer)
                    }
            case "3":
                if isCharacterAlive(character: emitter){
                    emitter = player.team[2]}else{
                        turnOfPlayer(player: player, oppositePlayer: oppositePlayer)
                    }
                
            default :
                print("--- Choisis un personnage de la liste. ---")
            }
        
        
        
        //----> Si COMBATTANT
        if emitter.fonction == "Combattant"{
        print("\nQui \(emitter.name) doit-il attaquer ?\n"
         + "#=========================#\n"
         + "    Equipage du \(oppositePlayer.name)n")
         for i in 1...oppositePlayer.team.count {
            print("\(i). \(oppositePlayer.team[i-1].presentation())")
        }
         print("    =———————————————-=\n"
         + "#=========================#\n"
        )
        
        if let receiverChoice = readLine() {
            switch receiverChoice {
            case "1":
                if isCharacterAlive(character: receiver){
                    receiver = oppositePlayer.team[0]}
            case "2":
                if isCharacterAlive(character: receiver){
                    receiver = oppositePlayer.team[1]}
            case "3":
                if isCharacterAlive(character: receiver){
                    receiver = oppositePlayer.team[2]}
                
            default :
                print("--- Choisis un personnage de l'équipe adverse. ---")
            }
        }//fin if let receiverChoice readline()
        
       
        }//fin if combattant
        
        //----> Si SOIGNEUR
        else{
            print("\nQui \(emitter.name) doit-il soigner ?\n"
             + "#=========================#\n"
                    + "    Equipage du \(player.name)n")
             for i in 1...player.team.count {
                print("\(i). \(player.team[i-1].presentation())")
            }
             print("    =———————————————-=\n"
             + "#=========================#\n"
            )
            
            if let receiverChoice = readLine() {
                switch receiverChoice {
                case "1":
                    if isCharacterAlive(character: receiver){
                        receiver = player.team[0] }
                case "2":
                    if isCharacterAlive(character: receiver){
                        receiver = player.team[1] }
                case "3":
                    if isCharacterAlive(character: receiver){
                        receiver = player.team[2] }
                    
                default :
                    print("--- Choisis un personnage de ton équipe. ---")
                }
            }//fin if let receiverChoice readline()
          }// fin du else
        }//fin if let emitterChoice = readline()

        // = Action =
        emitter.actionOn(characterReceiver: receiver)
        if isCharacterAlive(character: receiver){
               print ("\(emitter.name) s'est occupé de \(receiver.name). --> Points de vie restants pour \(receiver.name) : \(receiver.life)\n")
        }
        
    }//fin fonction turnOfPlayer()
    
    
    
    // = FONCTION selection de l'émetteur
    func selecEmitter (player: Player, emitter: Character, receiver: Character){
        
    }
    
    //= FONCTION Vérification vivant ou mort
    func isCharacterAlive (character: Character) -> Bool{
        if character.life <= 0{
            print("\(character.name) est mort.")
            return false
        }
        return true
    }
    
}//fin classe Game


// startBattle() -> lancer le combat
// Soit joueur 1 || joueur 2 choisis un personnage de ta team
// 1) Afficher la team du joueur
// 2) Faire un readline() pour choisir le personnage
// Si combattant, présentation de la team du player opposé || si soigneur demander à soigner un personnage de son équipe
// si combattant -> 1) Afficher la team du joueur opposé
//                  2) Faire un readline() pour choisir le personnage
// si soigneur -> 1) Afficher la team du joueur
//                2) Faire un readline() pour choisir le personnage
// 3) Faire l'action

// self.team.presentationAllCharacter()
// if let readline() stocker le character choisit pour l'utiliser ensuite
// si combattant oppositePlayer.team.presentationAllCharacter() || si soigneur self.team.presentationAllCharacter()
// characterChoisit.actionOn(characterOpposite)
