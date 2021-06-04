//
//  Characters.swift
//  roleGame
//
//  Created by Melissa Briere on 29/05/2021.
//

import Foundation

//== CLASSE PERSONNAGE ==
class Character {
    //propriétés
    var name :String
    var life :Int
    var weaponType : Weapon
    
    init(_ name :String, _ life :Int){
        self.name = name
        self.life = life
    }
    //méthode
    /*func attack (){
        life -= weaponType.damage
    }*/
    
}
//-- sous-classe de PERSONNAGE : PIRATE--
class pirateType : Character {
    
}
//instance de pirate
var pirate = pirateType(name:String, life: 150)



