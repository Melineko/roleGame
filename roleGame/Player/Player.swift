//
//  Player.swift
//  roleGame
//
//  Created by Melissa Briere on 31/05/2021.
//

import Foundation


final class Player {
    
    let name: String
    var team: [Character] = []
    var allTeamLife: Int {
        get {
            return team.reduce(0, {$0 + $1.life})
        }
    }
    
    init (name: String) {
        self.name = name
    }
    

    //=== PRESENTATION OF AVAILABLE CHARACTER ===
    private func presentAllCharacters() -> String {
        return "\n1.  \(Pirate.presentationMenu())"
            + "\n2.  \(Jailer.presentationMenu())"
            + "\n3.  \(Witch.presentationMenu())"
            + "\n4.  \(Fishman.presentationMenu())"
            + "\n5.  \(Sorcerer.presentationMenu())"
            + "\n6.  \(Mate.presentationMenu())"
    }//===========================================
    
    
    
    
    //=== CREATE THE TEAM ===
    func createTeams(player1Team: [Character]) {

        var isValidChoice = true
        
        while self.team.count < 3 {
            
            print("\(self.name) Capitaine, qui rejoint l'équipage ? Choisissez un personnage :\n_____________________________________\n"
                    + presentAllCharacters())
            
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
                        if self.team.first?.fonction == "Soigneur" || self.team.last?.fonction == "Soigneur" {
                            print("Vous ne pouvez recruter qu'un seul soigneur. Choisissez un combattant.")
                            isValidChoice = false
                        } else {
                            self.team.append(Witch())
                            isValidChoice = true
                        }
                    case "4":
                        self.team.append(Fishman())
                        isValidChoice = true
                    case "5":
                        if self.team.first?.fonction == "Soigneur" || self.team.last?.fonction == "Soigneur" {
                            print("Vous ne pouvez recruter qu'un seul soigneur. Choisissez un combattant.")
                            isValidChoice = false
                        } else {
                            self.team.append(Sorcerer())
                            isValidChoice = true
                        }
                    case "6":
                        self.team.append(Mate())
                        isValidChoice = true
                    default :
                        print("--- Choisissez un personnage de la liste en tapant son numéro. ---")
                        isValidChoice = false
                    }
                }//end if let readline()
            } while !isValidChoice
            
            print(" \n______________⚓️_______________\n  Membres de l'équipage : \(self.team.count)/3\n_______________________________\n")
            selectCharacterName(player1Team: player1Team)
        }// fin boucle while
        print("______ ☠️ Votre équipage est au complet ☠️ ______\n\n")
        AsciiArt.drawBoat()
    }//=======================
    
    
    
    
    //=== NAME VALID CHECKING ===
    private func isValidName(nameEntry: String, player1Team: [Character]) -> Bool {
        for character in player1Team {
            if nameEntry == character.name {
                print("\nCe nom existe déjà... mais vous ne manquez pas d'imagination.\n")
                return false
            }
        }
        return true
    }//==========================
    
    
    
    
    // === GIVE A NAME AT THE CHARACTER ===
    private func selectCharacterName(player1Team: [Character]) {
        
        print("Choisissez un nom pour votre nouvel équipier :")
        
        if let name = readLine(), !name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            if isValidName(nameEntry: name.lowercased().capitalized, player1Team: player1Team) && isValidName(nameEntry: name.lowercased().capitalized, player1Team: self.team) {
                // Add the name
                if let lastCharacter  = self.team.last {
                    lastCharacter.name = name.lowercased().capitalized
                    // using "la" or "le"
                    var gender: String{
                        get{
                            if lastCharacter.type == "sorcière" {
                                return "la"
                            } else {
                                return "le"
                            }
                        }
                    }
                    print("\n ⚔️ == Bienvenue à bord \(lastCharacter.name) \(gender) \(lastCharacter.type) ! == ⚔️\n\n")
                }
            } else {
                // Choose a new name
                selectCharacterName(player1Team: player1Team)
            }
        } else {
            print("Ce nom n'est pas valide.")
            selectCharacterName(player1Team: player1Team)
        }
    }//=====================================
    
    
    
    
    //====== DISPLAYING THE TEAM ======
    func displayTeam() {
        print("🏴‍☠️===== Equipage du \(self.name) =====🏴‍☠️\n")
        for eachCharacterP in self.team {
            print("=> \(eachCharacterP.presentation()) ")
        }
        print("----------------------------------------\n\n")
    }//================================
    
    
    
    
    //=== SELECT A CHARACTER ===
    func selectCharacter() -> Character? {
        if let entry = readLine() {
            switch entry {
            case "1":
                return self.team[0]
            case "2":
                return self.team[1]
            case "3":
                return self.team[2]
            default:
                print("Choisissez un numéro entre 1 et 3.")
                break
            }
        }
        return nil
    }//==========================
    
    
    

    
}//=== END PLAYER CLASS ===

