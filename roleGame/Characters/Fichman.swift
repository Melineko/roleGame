//
//  Fichman.swift
//  roleGame
//
//  Created by Melissa Briere on 28/06/2021.
//

import Foundation

class Fishman: Character {
    
    init() {
        super.init(name: "Pêcheur", life: 60, lifeMax: 60, weapon: Harpoon(), type: "pêcheur", fonction: "Combattant")
    }
    
    
    
    //=== FISHMAN INITIAL PRESENTATION ===
    static func presentationMenu() -> String {
        return "␦ Pêcheur (Combattant) ---> Points de vie : 60 - Arme : Harpon - Dégâts : 28"
    }//===================================
    
    
    
}//=== END FISHMAN CLASS ===
