//
//  Witch.swift
//  roleGame
//
//  Created by Melissa Briere on 28/06/2021.
//

import Foundation

//-- sous-classe de PERSONNAGE : SORCIERE--
class Witch: Character {
    
    init() {
        super.init(name: "Sorcière", life: 75, lifeMax: 75, weapon: MagicSkullhead(), type: "sorcière", fonction: "Soigneur")
    }
    
    
    
    //=== WITCH INITIAL PRESENTATION ===
    static func presentationMenu() -> String {
        return "✦ Sorcière (Soigneur) -> Points de vie : 75 - Arme : Crâne magique - Soins : 70"
    }//=================================
    
    
    
    //=== Override presentation with healthing specs ===
    override func presentation() -> String {
            if life > 0 {
                return "\(name) : \(type), \(fonction) --> Points de vie : \(life) - Objet de soin : \(weapon.name) - Soins : \(weapon.damage)"
            } else {
                return "\(name) -> ✝︎"
        }
    }//================================================
    
    
    
    //=== Override action with healthing specs ===
    override func actionOn(characterReceiver: Character) {
        
        characterReceiver.life += self.weapon.damage
        
        if characterReceiver.life > characterReceiver.lifeMax {
            characterReceiver.life = characterReceiver.lifeMax
            print ("C'est la pleine forme !")
        }
    }//=============================================
    
    
}//=== END WITCH CLASS ===

