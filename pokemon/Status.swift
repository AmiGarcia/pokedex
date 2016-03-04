//
//  Status.swift
//  pokemon
//
//  Created by Ami Garcia on 3/1/16.
//  Copyright © 2016 Ami Garcia. All rights reserved.
//

import Gloss

class Status: Decodable{
    var health: Int = 0
    var attack: Int = 0
    var defense: Int = 0
    var spAttack: Int = 0
    var spDefence: Int = 0
    var speed: Int = 0
    
    
    
    required init?(json:JSON){
        self.health = ("health" <~~ json)!
        self.attack = ("attack" <~~ json)!
        self.defense = ("defense" <~~ json)!
        self.spAttack = ("spAttack" <~~ json)!
        self.speed = ("speed" <~~ json)!
        
    }
}