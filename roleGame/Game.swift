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
        createTeams(player: player1)
        createTeams(player: player2)
    }
    
    //=== FONCTION Création d'équipe ===
    func createTeams(player: Player) {
        
        // Tant que le joueur n'a pas choisi 3 personnages
        while player.characters.count < 3{
            
            print("\(player.name) Qui rejoint l'équipage ? Choisis un personnage :"
                    + "\n1.  Pirate"
                    + "\n2.  Géolier"
                    + "\n3.  Sorcière"
                    + "\n4.  Pêcheur"
                    + "\n5.  Mage"
                    + "\n6.  Mouissaillon")
            
            if let characterChoice = readLine() {
                switch characterChoice {
                case "1":
                    print("\nNomme ton Pirate : ")
                    if let inputPirateName = readLine(){
                        print("\nBienvenue à bord \(inputPirateName) le pirate !\n========")
                        let pirateP1 = Pirate(customName: "\(inputPirateName)")
                        player.characters.append(pirateP1)
                    }
                    
                case "2":
                    print("\nNomme ton géolier : ")
                    if let inputJailerName = readLine(){
                        print("\nBienvenue à bord \(inputJailerName) le géolier !\n========")
                          let jailerP1 = Jailer(customName: "\(inputJailerName)")
                        player.characters.append(jailerP1)
                    }
                case "3":
                    print("\nNomme ta sorcière : ")
                    if let inputWitchName = readLine(){
                        print("\nBienvenue à bord \(inputWitchName) la sorcière !\n========")
                        let witchP1 = Witch(customName: "\(inputWitchName)")
                        player.characters.append(witchP1)
                    }
                case "4":
                    print("\nNomme ton pêcheur : ")
                    if let inputFishmanName = readLine(){
                        print("\nBienvenue à bord \(inputFishmanName) le pêcheur !\n========")
                        let fishmanP1 = Fishman(customName: "\(inputFishmanName)")
                        player.characters.append(fishmanP1)
                    }
                case "5":
                    print("\nNomme ton mage : ")
                    if let inputSorcererName = readLine(){
                        print("\nBienvenue à bord \(inputSorcererName) le mage !\n========")
                        let sorcererP1 = Sorcerer(customName: "\(inputSorcererName)")
                        player.characters.append(sorcererP1)
                    }
                case "6":
                    print("\nNomme ton moussaillon : ")
                    if let inputMateName = readLine(){
                        print("\nBienvenue à bord \(inputMateName) le moussaillon !\n========")
                        let mateP1 = Mate(customName: "\(inputMateName)")
                        player.characters.append(mateP1)
                    }
                default :
                    print("--- Choisis un personnage de la liste en tapant son numéro. ---")
                }
            }
        }// balise fin boucle while
    }
    
    func startBattle() {
        
    }
    
    func displayWinner() {
        
    }
}

