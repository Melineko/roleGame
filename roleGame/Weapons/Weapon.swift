//
//  Weapon.swift
//  roleGame
//
//  Created by Melissa Briere on 29/05/2021.
//

import Foundation

//== CLASSE ARME ==
class Weapon {
    // == propriétés ==
    var name: String
    var damage: Int
    
    init(name: String, damage: Int) {
        self.name = name
        self.damage = damage
    }
}


