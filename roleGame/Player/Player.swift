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
                    + "\n1.  \(Pirate.presentationMenu())"
                    + "\n2.  \(Jailer.presentationMenu())"
                    + "\n3.  \(Witch.presentationMenu())"
                    + "\n4.  \(Fishman.presentationMenu())"
                    + "\n5.  \(Sorcerer.presentationMenu())"
                    + "\n6.  \(Mate.presentationMenu())")
            
            print("Nombre de character dans mon tableau \(player.team.count)/3")
            
            if let characterChoice = readLine() {
                switch characterChoice {
                case "1":
                    self.team.append(piratePlayer)
                    
                case "2":
                    self.team.append(jailerPlayer)
                    
                case "3":
                    self.team.append(witchPlayer)
                    
                case "4":
                    self.team.append(fishmanPlayer)
                    
                case "5":
                    self.team.append(sorcererPlayer)
                    
                case "6":
                    self.team.append(matePlayer)
                    
                default :
                    print("--- Choisis un personnage de la liste en tapant son numéro. ---")
                }
            }//fin if let readline()
            print(" \n______________⚓️_______________\nMembres de l'équipage : \(player.team.count)/3\n_______________________________\n")
            selectCharacterName()
        }// balise fin boucle while
        print("______ ☠️ Ton équipage est au complet ☠️ ______\n\n")
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
                    print("\n ⚔️ == Bienvenue à bord \(lastCharacter.name) ! == ⚔️\n\n")
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

