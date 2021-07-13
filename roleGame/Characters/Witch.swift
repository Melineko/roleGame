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
        super.init(name: "Sorcière", life: 75, weapon: MagicSkullhead(), type: "sorcière", fonction: "Soigneur")
    }
    
    static func presentationMenu() ->String{
        return "Sorcière -> Points de vie : 75 - Arme : Crâne magique - Dégâts : 70"
    }
    
    override func actionOn(characterReceiver: Character) {
        health(characterReceiver: characterReceiver)
    
    }
    //Soin
    func health(characterReceiver: Character){
        characterReceiver.life += self.weapon.damage
    }
    
}

