//
//  Game.swift
//  roleGame
//
//  Created by Melissa Briere on 24/05/2021.
//

import Foundation

class Game {
    
    // Declare all players
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
        print("\(players[0].name) Quel équipier doit agir ? (Tapes son numéro)")
        for i in 1...players[0].team.count {
            print("\(i). \(players[0].team[i-1].presentation())")
        }
        
        // S'assurer que emitter et receiver ne soit pas nil
        if let emitter = players[0].selectCharacter() {
            if isCharacterAlive(character: emitter){
            
            print("\(players[0].name), sur quel character voulez-vous agir ? (Tapes son numéro)")
            
            // Tuples - pour  adapter l'index du joueur
            var indexPlayer: Int {
                get {
                    //L'emeteur est-il un combattant ? alors l'index sera 1 sinon 0
                    return emitter.fonction == "Combattant" ? 1 : 0
                }
            }// fin du tuples
            
            //listing de l'équipe du joueur ou de l'équipe adverse
            for i in 1...players[indexPlayer].team.count {
                print("\(i). \(players[indexPlayer].team[i-1].presentation())")
            }
            
            if let receiver = players[indexPlayer].selectCharacter() {
                if isCharacterAlive(character: receiver){
                    
                  emitter.actionOn(characterReceiver: receiver)
                
                  print ("\(emitter.name) s'est occupé de \(receiver.name). --> Points de vie restants pour \(receiver.name) : \(receiver.life)\n")
                }else{
                    print("Tu ne peux pas réssuciter ce personnage.")
                    turnOfPlayer()
                }
            }
            }//fin du if isCharacterAlive
            else{
                turnOfPlayer()
            }
        }// fin du if let emitter
        
//        if let emitterChoice = readLine() {
//            switch emitterChoice {
//            case "1":
//                if isCharacterAlive(character: emitter){
//                    emitter = player.team[0]}else{
//                        turnOfPlayer(player: player, oppositePlayer: oppositePlayer)
//                    }
//            case "2":
//                if isCharacterAlive(character: emitter){
//                    emitter = player.team[1]}else{
//                        turnOfPlayer(player: player, oppositePlayer: oppositePlayer)
//                    }
//            case "3":
//                if isCharacterAlive(character: emitter){
//                    emitter = player.team[2]}else{
//                        turnOfPlayer(player: player, oppositePlayer: oppositePlayer)
//                    }
//
//            default :
//                print("--- Choisis un personnage de la liste. ---")
//            }
        
//
//
//        //----> Si COMBATTANT
//        if emitter.fonction == "Combattant"{
//        print("\nQui \(emitter.name) doit-il attaquer ?\n"
//         + "#=========================#\n"
//         + "    Equipage du \(oppositePlayer.name)n")
//         for i in 1...oppositePlayer.team.count {
//            print("\(i). \(oppositePlayer.team[i-1].presentation())")
//        }
//         print("    =———————————————-=\n"
//         + "#=========================#\n"
//        )
        
//        if let receiverChoice = readLine() {
//            switch receiverChoice {
//            case "1":
//                if isCharacterAlive(character: receiver){
//                    receiver = oppositePlayer.team[0]}
//            case "2":
//                if isCharacterAlive(character: receiver){
//                    receiver = oppositePlayer.team[1]}
//            case "3":
//                if isCharacterAlive(character: receiver){
//                    receiver = oppositePlayer.team[2]}
//
//            default :
//                print("--- Choisis un personnage de l'équipe adverse. ---")
//            }
//        }//fin if let receiverChoice readline()
//
//
//        }//fin if combattant
//
//        //----> Si SOIGNEUR
//        else{
//            print("\nQui \(emitter.name) doit-il soigner ?\n"
//             + "#=========================#\n"
//                    + "    Equipage du \(player.name)n")
//             for i in 1...player.team.count {
//                print("\(i). \(player.team[i-1].presentation())")
//            }
//             print("    =———————————————-=\n"
//             + "#=========================#\n"
//            )
//
//            if let receiverChoice = readLine() {
//                switch receiverChoice {
//                case "1":
//                    if isCharacterAlive(character: receiver){
//                        receiver = player.team[0] }
//                case "2":
//                    if isCharacterAlive(character: receiver){
//                        receiver = player.team[1] }
//                case "3":
//                    if isCharacterAlive(character: receiver){
//                        receiver = player.team[2] }
//
//                default :
//                    print("--- Choisis un personnage de ton équipe. ---")
//                }
//            }//fin if let receiverChoice readline()
//          }// fin du else
//        }//fin if let emitterChoice = readline()
//
//        // = Action =
//        emitter.actionOn(characterReceiver: receiver)
//        if isCharacterAlive(character: receiver){
//               print ("\(emitter.name) s'est occupé de \(receiver.name). --> Points de vie restants pour \(receiver.name) : \(receiver.life)\n")
//        }
        
    }//fin fonction turnOfPlayer()
    
    //= FONCTION Vérification vivant ou mort
    func isCharacterAlive (character: Character) -> Bool{
        if character.life <= 0 {
            print("\(character.name) est mort(e).")
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
