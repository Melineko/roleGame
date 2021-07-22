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
        super.init(name: "Mage", life: 75, lifeMax: 75, weapon: Scepter(), type: "mage", fonction: "Soigneur")
    }
    
    static func presentationMenu() ->String{
        return "Mage (Soigneur) -> Points de vie : 75 - Arme : Sceptre - Soins : 62"
    }
    
    override func presentation() -> String {
            // Présentation du character
            if life > 0{
                return "\(name) : \(type), \(fonction) -> Points de vie : \(life) - Objet de soin : \(weapon.name) - Soins : \(weapon.damage)"
            }else{
                return "\(name) -> ✝︎"
            }
        }
    // Health action
    override func actionOn(characterReceiver: Character) {
        
        characterReceiver.life += self.weapon.damage
        
        if characterReceiver.life > characterReceiver.lifeMax{
            characterReceiver.life = characterReceiver.lifeMax
            print ("C'est la pleine forme !")
        }
    }
    
   
    
}// Fin de classe MAGE
