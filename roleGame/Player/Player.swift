//
//  Player.swift
//  roleGame
//
//  Created by Melissa Briere on 31/05/2021.
//

import Foundation
// CLASSE JOUEUR //
class Player {
    let name : String
    var characters: [Character] = []
    
    init (name: String){
        self.name = name
    }
    
    // init an empty array and append the content
    /*init (name: String, characters: [Character]){
        self.name = name
        self.characters = [Character]()
        self.characters.append(contentsOf: characters)
    }*/

}

