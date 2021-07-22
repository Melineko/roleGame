//
//  Characters.swift
//  roleGame
//
//  Created by Melissa Briere on 29/05/2021.
//

import Foundation

//== CLASSE PERSONNAGE ==
class Character {
    //propriétés
    var name: String
    var type: String
    var life: Int
    var lifeMax: Int
    var fonction: String
    var weapon: Weapon
    
    init(name: String, life: Int, lifeMax: Int, weapon: Weapon, type: String, fonction: String){
        self.name = name
        self.type = type
        self.life = life
        self.lifeMax = lifeMax
        self.fonction = fonction
        self.weapon = weapon
    }
    
    func presentation() -> String {
        // Présentation du character
        if life > 0{
            return "\(name) : \(type), \(fonction) ---> Points de vie : \(life) - Arme : \(weapon.name) - Dégâts : \(weapon.damage)"
        }else{
            return "\(name) -> ✝︎"
        }
    }
    
    // Attack action for all character
    func actionOn(characterReceiver: Character) {
        characterReceiver.life -= self.weapon.damage
        
    }
    
}//=== FIN DE LA CLASSE CHARACTER





