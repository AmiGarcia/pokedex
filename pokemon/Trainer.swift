//
//  Trainer.swift
//  pokemon
//
//  Created by Ami Garcia on 3/1/16.
//  Copyright © 2016 Ami Garcia. All rights reserved.
//

import Gloss

class Trainer: Decodable{
    
    
    var name = ""
    var age = 0
    var photo = ""
    var town = ""
    var onHandPokemons=[Pokemon]()
    
    required init?(json:JSON){
        self.name = ("name" <~~ json)!
        self.age = ("age" <~~ json)!
        self.photo = ("photo" <~~ json)!
        self.town = ("town" <~~ json)!
        self.onHandPokemons = ("onHandPokemons" <~~ json)!
    }
    
}