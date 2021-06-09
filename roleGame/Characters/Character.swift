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
    var life: Int
    var strength: Int
    var weapon: Weapon
    
    init(name: String, life: Int, strength: Int, weapon: Weapon){
        self.name = name
        self.life = life
        self.strength = strength
        self.weapon = weapon
    }
    
    func actionOn() {
        // une source et une cible
        let characterGiver: Character
        let characterReceiver: Character
        
        // Action fight
        func fight(){
            characterReceiver.life-=characterGiver.weapon.damage }
        
        // or heal ___ seulement mage et sorcière
    }
    
}




