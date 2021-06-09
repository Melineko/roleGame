//
//  Pirate.swift
//  roleGame
//
//  Created by Melissa Briere on 04/06/2021.
//

import Foundation

//-- sous-classe de PERSONNAGE : PIRATE--
class Pirate: Character {
    var customName: String
    
    init(customName: String) {
        self.customName = customName
        super.init(name: "Pirate", life: 90, strength: 0, weapon: Sword())
    }
    
    override func actionOn() {
       
    }
    
}
