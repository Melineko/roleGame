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
        super.init(name: "Mage", life: 75, weapon: Scepter())
    }
    
    override func actionOn() {
        
//            characterReceiver.life+=25
    }
    
}
