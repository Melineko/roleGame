//
//  Mate.swift
//  roleGame
//
//  Created by Melissa Briere on 28/06/2021.
//

import Foundation

//-- sous-classe de PERSONNAGE : MOUSSAILLON--
class Mate: Character {
    
    init() {
        super.init(name: "Moussaillon", life: 40, weapon: FlammableRhum())
    }
    
    override func actionOn() {
       
    }
    
}
