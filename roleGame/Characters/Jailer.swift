//
//  Jailer.swift
//  roleGame
//
//  Created by Melissa Briere on 08/06/2021.
//

import Foundation

class Jailer: Character {
    
    init() {
        super.init(name: "Géolier", life: 120, lifeMax: 120, weapon: Canonball(), type: "géolier", fonction: "Combattant")
    }
    
    
    
    //=== JAILER INITIAL PRESENTATION ===
    static func presentationMenu() -> String {
        return "☍ Géolier (Combattant) ---> Points de vie : 120 - Arme : Boulet - Dégâts : 45"
    }//==================================
    
    
    
}//=== END JAILER CLASS ===
