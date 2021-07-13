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
    var allTeamLife: Int {
        get {
            return team.reduce(0, {$0 + $1.life})
        }
    }
//    var emitter: Character?
//    var receiver: Character?
    
    init (name: String){
        self.name = name
    }
    
    
    
//    //=== FONCTION calcul vie cumulé des persos ===
//    func cumulLife (player: Player) -> Int{
//        var totalLife = 0
//        for eachCharacter in player.team {
//            totalLife += eachCharacter.life
//        }
//        return totalLife
//    }
    
    
    
    //=== FONCTION Création d'équipe ===
    func createTeams(player1Team: [Character]) {
        // = Personnages choisis =
        var isValidChoice = true
        
        // Tant que le joueur n'a pas choisi 3 personnages
        while self.team.count < 3 {
            
            print("\(self.name) Qui rejoint l'équipage ? Choisis un personnage :\n_____________________________________\n"
                    
                    + "\n1.  \(Pirate.presentationMenu())"
                    + "\n2.  \(Jailer.presentationMenu())"
                    + "\n3.  \(Witch.presentationMenu())"
                    + "\n4.  \(Fishman.presentationMenu())"
                    + "\n5.  \(Sorcerer.presentationMenu())"
                    + "\n6.  \(Mate.presentationMenu())")
            
            print("Nombre de character dans mon tableau \(self.team.count)/3")
            
            repeat {
            if let characterChoice = readLine() {
                switch characterChoice {
                case "1":
                    self.team.append(Pirate())
                    isValidChoice = true
                case "2":
                    self.team.append(Jailer())
                    isValidChoice = true
                case "3":
                    self.team.append(Witch())
                    isValidChoice = true
                case "4":
                    self.team.append(Fishman())
                    isValidChoice = true
                case "5":
                    self.team.append(Sorcerer())
                    isValidChoice = true
                case "6":
                    self.team.append(Mate())
                    isValidChoice = true
                default :
                    print("--- Choisis un personnage de la liste en tapant son numéro. ---")
                    isValidChoice = false
                }
            }//fin if let readline()
            } while !isValidChoice
            print(" \n______________⚓️_______________\nMembres de l'équipage : \(self.team.count)/3\n_______________________________\n")
            selectCharacterName(player1Team: player1Team)
        }// fin boucle while
        print("______ ☠️ Ton équipage est au complet ☠️ ______\n\n")
    }
    
    
    //=== FONCTION nom valide ou pas ===
    func isValidName(nameEntry: String, player1Team: [Character]) -> Bool {
        // Permettre de vérifier le nom
        for character in player1Team {
            if nameEntry == character.name{
                print("Ce nom existe déjà merci d'en choisir un autre")
                return false
            }
        }
        return true
    }// fin Fonction isValidName()
    
    
    // === FONCTION pour nommer son personnage ===
    func selectCharacterName(player1Team: [Character]) {
        // Permettre de remplacer le nom du personnage dans l'équipe
        print("Choisis un nom pour ton personnage :")
        if let name = readLine(), !name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            if isValidName(nameEntry: name.lowercased().capitalized, player1Team: player1Team) && isValidName(nameEntry: name.lowercased().capitalized, player1Team: self.team){
                // Ajouter le nom
                if let lastCharacter  = self.team.last {
                    lastCharacter.name = name.lowercased().capitalized
                    print("\n ⚔️ == Bienvenue à bord \(lastCharacter.name) le \(lastCharacter.type)! == ⚔️\n\n")
                }
            } else {
                // Demander de choisir un nouveau nom
                selectCharacterName(player1Team: player1Team)
            }
        } else {
            print("Ce nom n'est pas valide")
            selectCharacterName(player1Team: player1Team)
        }
    }// fin Fonction selectCharacterName
    
}// FIN CLASSE JOUEUR
    
    




    
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
