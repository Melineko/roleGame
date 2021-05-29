//
//  Characters.swift
//  roleGame
//
//  Created by Melissa Briere on 29/05/2021.
//

import Foundation

class Character {
    var name :String
    var life :Int
    var weaponType : Weapon
    
    init(_ name :String, _ life :Int){
        self.name = name
        self.life = life
    }
    
    func attack (){
        life -= weaponType.damage
    }
    
}
