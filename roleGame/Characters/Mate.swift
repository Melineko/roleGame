//
//  Mate.swift
//  roleGame
//
//  Created by Melissa Briere on 28/06/2021.
//

import Foundation

final class Mate: Character {
    
    init() {
        super.init(name: "Moussaillon", life: 70, lifeMax: 70, weapon: FlammableRhum(), type: "moussaillon", fonction: "Combattant")
    }
    
    //=== FICHMAN INITIAL PRESENTATION ===
    static func presentationMenu() -> String {
        return "⎈ Moussaillon (Combattant) ---> Points de vie : 40 - Arme : Rhum incendiaire - Dégâts : 80"
    }
    
    
}
