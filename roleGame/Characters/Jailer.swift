//
//  Jailer.swift
//  roleGame
//
//  Created by Melissa Briere on 08/06/2021.
//

import Foundation

//-- sous-classe de PERSONNAGE : PIRATE--
class Jailer: Character {
    
    init() {
        super.init(name: "Géolier", life: 120, strength: 0, weapon: Canonball())
    }
    
    override func actionOn() {
       
    }
    
}
