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
    
    static func presentationMenu() ->String{
        return "Moussaillon -> Points de vie : 40 - Arme : Rhum incendiaire - Dégâts : 80"
    }
    
    override func actionOn() {
       
    }
    
}
