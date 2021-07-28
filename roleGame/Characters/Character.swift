//
//  Characters.swift
//  roleGame
//
//  Created by Melissa Briere on 29/05/2021.
//

import Foundation

class Character {

    var name: String
    let type: String
    var life: Int
    let lifeMax: Int
    let fonction: String
    var weapon: Weapon
    
    init(name: String, life: Int, lifeMax: Int, weapon: Weapon, type: String, fonction: String) {
        self.name = name
        self.type = type
        self.life = life
        self.lifeMax = lifeMax
        self.fonction = fonction
        self.weapon = weapon
    }
    
    
    
    //=== PRESENTATION STATS OF CHARACTER ===
    func presentation() -> String {
        if life > 0{
            return "\(name) : \(type), \(fonction) ---> Points de vie : \(life) - Arme : \(weapon.name) - Dégâts : \(weapon.damage)"
        } else {
            return "\(name) ---> ✝︎"
        }
    }//======================================
    
    
    
    
    //=== MAKE ACTION ===
    func actionOn(characterReceiver: Character) {
        characterReceiver.life -= self.weapon.damage
    }//==================
    
    
    
    //=== A CHEST WAS FOUND ===
    func findingChest(character: Character){
        print("Vous trouvez un coffre d'armurier. Souhaitez-vous l'ouvrir ?")
        print("1. YES    /    2. NO")
        if let answerPlayer = readLine(){
            if isPlayerOpensChest(entry: answerPlayer, character: character){
                character.weapon = BonusWeapon()
                print(character.presentation())
                
            }
        }
    }
    
    //=== OPEN THE CHEST OR NOT ===
   private func isPlayerOpensChest(entry: String, character: Character)-> Bool {
        if entry == "2" {
            print("Ne prenons pas de risques...")
            return false
        }else if entry == "1" {
            print("Vous venez de récupérer une dague en or.")
            return true
        }else{
            print("Choisissez 1 ou 2.")
            findingChest(character: character)
        }
        return true
    }
    
    
    
}//=== END CHARACTER CLASS ===





