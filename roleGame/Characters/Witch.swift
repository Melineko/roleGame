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
        super.init(name: "Sorcière", life: 75, weapon: MagicSkullhead())
    }
    
    override func actionOn() {
        let characterReceiver: Character
        
        func heal(){
            characterReceiver.life+=25
        }
    }
    
}
