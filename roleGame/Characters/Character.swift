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
    var weapon: Weapon
    
    init(name: String, life: Int, weapon: Weapon, type: String){
        self.name = name
        self.type = type
        self.life = life
        self.weapon = weapon
    }
    
    func presentation() -> String {
        // Présentation du character
        return "\(name) -> Points de vie : \(life) - Arme : \(weapon.name) - Dégâts : \(weapon.damage)"
    }
    
    
    func actionOn() {
        // une source et une cible
//        self.weapon.damage
//        let characterReceiver: Character =
        
    }
        
        // Action fight
    func fight(characterReceiver: Character) {
//            characterReceiver.life-=characterGiver.weapon.damage
            
        }
    }//=== FIN DE LA CLASSE





