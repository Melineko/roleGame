//
//  Pirate.swift
//  roleGame
//
//  Created by Melissa Briere on 04/06/2021.
//

import Foundation

//-- sous-classe de PERSONNAGE : PIRATE--
class Pirate: Character {
    
    init() {
        super.init(name: "Pirate", life: 90, lifeMax: 90, weapon: Sword(), type: "pirate", fonction: "Combattant")
        
    }
    
    static func presentationMenu() ->String{
        return "Pirate (Combattant) -> Points de vie : 90 - Arme : Epée - Dégâts : 25"
    }
        
}
