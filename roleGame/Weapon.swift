//
//  Weapon.swift
//  roleGame
//
//  Created by Melissa Briere on 29/05/2021.
//

import Foundation
class Weapon {
    var name : String
    var damage :Int
    
    init(name:String, damage:Int){
        self.name = name
        self.damage = damage
    }
}

sword = Weapon(name: "Sword", damage: 35)
sword.name

