//
//  Sorcerer.swift
//  roleGame
//
//  Created by Melissa Briere on 28/06/2021.
//

import Foundation

//-- sous-classe de PERSONNAGE : MAGE--
class Sorcerer: Character {
    
    init() {
        super.init(name: "Mage", life: 75, weapon: Scepter(), type: "mage")
    }
    
    static func presentationMenu() ->String{
        return "Mage -> Points de vie : 75 - Arme : Sceptre - Dégâts : 62"
    }
    
    override func actionOn(characterReceiver: Character) {
        health(characterReceiver: characterReceiver)
    }
    
    //Soin
    func health(characterReceiver: Character){
        characterReceiver.life += self.weapon.damage
    }
    
}// Fin de classe MAGE
