//
//  Pirate.swift
//  roleGame
//
//  Created by Melissa Briere on 04/06/2021.
//

import Foundation

final class Pirate: Character {
    
    init() {
        super.init(name: "Pirate", life: 90, lifeMax: 90, weapon: Sword(), type: "pirate", fonction: "Combattant")
    }
    
    
    
    //=== PIRATE INITIAL PRESENTATION ===
    static func presentationMenu() -> String {
        return "⚔︎ Pirate (Combattant) ---> Points de vie : 90 - Arme : Epée - Dégâts : 25"
    }//===========================
       
    
    
}//=== END PIRATE CLASS ===
