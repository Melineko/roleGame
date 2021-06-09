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
    var charactersP1: [Character] = []
    
    // =Joueur2=
    let player2 = Player(name: "<< Joueur 2 >>")
    var charactersP2: [Character] = []
    
    
    func start() {
        createTeams()
    }
    
    func createTeams() {
        while charactersP1.count < 3{
            print("Joueur 1 Qui rejoint l'équipage ? Choisis un personnage :"
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
                      let pirateP1 = Pirate(customName: "\(inputPirateName)")
                        charactersP1.append(pirateP1)
                    }
                    
                case "2":
                    print("Nomme ton géolier : ")
                    if let inputJailerName = readLine(){
                    print("Bienvenue à bord \(inputJailerName) le géolier !")
                          let jailerP1 = Jailer(customName: "\(inputJailerName)")
                          charactersP1.append(jailerP1)
                    }
                case "3":
                    print("Nomme ta sorcière : ")
                    if let inputWitchName = readLine(){
                    print("Bienvenue à bord \(inputWitchName) la sorcière !")
                        let witchP1 = Witch(customName: "\(inputWitchName)")
                        charactersP1.append(witchP1)
                    }
                case "4":
                    print("Nomme ton pêcheur : ")
                    if let inputFishmanName = readLine(){
                    print("Bienvenue à bord \(inputFishmanName) le pêcheur !")
                        let fishmanP1 = Fishman(customName: "\(inputFishmanName)")
                        charactersP1.append(fishmanP1)
                    }
                case "5":
                    print("Nomme ton mage : ")
                    if let inputSorcererName = readLine(){
                    print("Bienvenue à bord \(inputSorcererName) le mage !")
                        let sorcererP1 = Sorcerer(customName: "\(inputSorcererName)")
                        charactersP1.append(sorcererP1)
                    }
                case "6":
                    print("Nomme ton moussaillon : ")
                    if let inputMateName = readLine(){
                    print("Bienvenue à bord \(inputMateName) le moussaillon !")
                        let mateP1 = Mate(customName: "\(inputMateName)")
                        charactersP1.append(mateP1)
                    }
                default :
                    print("Choisis un personnage de la liste en tapant son numéro.")
                }
            }
        }// balise fin boucle while
    }
    
    func startBattle() {
        
    }
    
    func displayWinner() {
        
    }
}

