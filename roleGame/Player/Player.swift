//
//  Player.swift
//  roleGame
//
//  Created by Melissa Briere on 31/05/2021.
//

import Foundation

// CLASSE JOUEUR //
class Player {
    let name: String
    var team: [Character] = []
    
    init (name: String){
        self.name = name
    }
    
    //=== FONCTION Création d'équipe ===
    func createTeams(player: Player) {
        // = Personnages choisis =
        let piratePlayer = Pirate()
        let jailerPlayer = Jailer()
        let witchPlayer = Witch()
        let fishmanPlayer = Fishman()
        let sorcererPlayer = Sorcerer()
        let matePlayer = Mate()
        // Tant que le joueur n'a pas choisi 3 personnages
        while player.team.count < 3 {
            
            print("\(player.name) Qui rejoint l'équipage ? Choisis un personnage :\n_____________________________________\n"
                    
                    // Utilier la fonction présentation dans character
                    + "\n1.  \(piratePlayer.presentation())"
                    + "\n2.  \(jailerPlayer.presentation())"
                    + "\n3.  \(witchPlayer.presentation())"
                    + "\n4.  \(fishmanPlayer.presentation())"
                    + "\n5.  \(sorcererPlayer.presentation())"
                    + "\n6.  \(matePlayer.presentation())")
            
            print("Nombre de character dans mon tableau \(player.team.count)/3")
            
            if let characterChoice = readLine() {
                switch characterChoice {
                case "1":
                    self.team.append(piratePlayer)
                    
                case "2":
                    print("\nNomme ton géolier : ")
                    if let inputJailerName = readLine(){
                        for eachCharacter in player.team{
                            if inputJailerName == eachCharacter.name {
                                print("Ce nom existe déjà.")
                            }else{
                                player.team.append(jailerPlayer)
                                jailerPlayer.name = "\(inputJailerName)"
                                print("\nBienvenue à bord \(inputJailerName) le géolier !\n========\n")
                            }
                        }//fin boucle for
                    }
                case "3":
                    print("\nNomme ta sorcière : ")
                    if let inputWitchName = readLine(){
                        for eachCharacter in player.team{
                            if inputWitchName == eachCharacter.name {
                                print("Ce nom existe déjà.")
                            }else{
                        player.team.append(witchPlayer)
                        witchPlayer.name = "\(inputWitchName)"
                        print("\nBienvenue à bord \(inputWitchName) la sorcière !\n========\n")
                            }
                        }//fin boucle for
                    }
                case "4":
                    print("\nNomme ton pêcheur : ")
                    if let inputFishmanName = readLine(){
                        for eachCharacter in player.team{
                            if inputFishmanName == eachCharacter.name {
                                print("Ce nom existe déjà.")
                            }else{
                        player.team.append(fishmanPlayer)
                        fishmanPlayer.name = "\(inputFishmanName)"
                        print("\nBienvenue à bord \(inputFishmanName) le pêcheur !\n========\n")
                            }
                        }//fin boucle for
                    }
                case "5":
                    print("\nNomme ton mage : ")
                    if let inputSorcererName = readLine(){
                        for eachCharacter in player.team{
                            if inputSorcererName == eachCharacter.name {
                                print("Ce nom existe déjà.")
                            }else{
                        print("\nBienvenue à bord \(inputSorcererName) le mage !\n========\n")
                        player.team.append(sorcererPlayer)
                        sorcererPlayer.name = "\(inputSorcererName)"
                            }
                        }//fin boucle for
                    }
                case "6":
                    print("\nNomme ton moussaillon : ")
                    if let inputMateName = readLine(){
                        for eachCharacter in player.team{
                            if inputMateName == eachCharacter.name {
                                print("Ce nom existe déjà.")
                            }else{
                        print("\nBienvenue à bord \(inputMateName) le moussaillon !\n========\n")
                        player.team.append(matePlayer)
                        matePlayer.name = "\(inputMateName)"
                            }
                        }//fin boucle for
                    }
                default :
                    print("--- Choisis un personnage de la liste en tapant son numéro. ---")
                }
            }
            print("Nombre de character dans mon tableau \(player.team.count)/3")
            selectCharacterName()
        }// balise fin boucle while
    }
    
    func isValidName(nameEntry: String) -> Bool {
        // Permettre de vérifier le nom
        for character in self.team {
            if character.name == nameEntry {
                print("Ce nom existe déjà merci d'en choisir un autre")
                return false
            }
        }
        
        return true
    }
    
    func selectCharacterName() {
        // Permettre de remplacer le nom de ton character dans ton équipe
        print("Choisir un nom pour votre personnage:")
        if let name = readLine(), !name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            if isValidName(nameEntry: name.lowercased().capitalized) {
                // Ajouter le nom
                if let lastCharacter  = self.team.last {
                    lastCharacter.name = name.lowercased().capitalized
                }
            } else {
                // demander de choisir un nouveau nom
                selectCharacterName()
            }
        }
    }
    
    
    
    
//    // Fonction pour cas du menu
//    func actionSelecMenu(characterTypeName: Character ,characterTypePlayer: Character, player : Player){
//        print("\nNomme ton \(characterTypeName.name) : ")
//
//        if let inputCharacterName = readLine(){
//            //Verification des noms existants dans le tableau du joueur
//            for eachCharacter in player.team{
//                if inputCharacterName == eachCharacter.name {
//                    print("Ce nom existe déjà.")
//                }else{
//                    player.team.append(characterTypePlayer)
//                    characterTypePlayer.name = "\(inputCharacterName)"
//                    print("\nBienvenue à bord \(inputCharacterName) le \(characterTypeName.name) !\n========\n")
//                }
//            }//fin boucle for
//        }
//    }//fin func actionSelecMenu
    
    
    
    
    
    // initialisation du tableau
    /*init (name: String, characters: [Character]){
        self.name = name
        self.characters = [Character]()
    }*/
    
//je choisi le character et je vais le rajouter à mon tableau
//    self.characters.append(Pirate())
//    self.characters[0].name = "Melissa"
  
}

