//
//  Fichman.swift
//  roleGame
//
//  Created by Melissa Briere on 28/06/2021.
//

import Foundation

//-- sous-classe de PERSONNAGE : PECHEUR--
class Fishman: Character {
    
    init() {
        super.init(name: "Pêcheur", life: 60, weapon: Harpoon())
    }
    
}
