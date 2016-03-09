//
//  Status.swift
//  pokemon
//
//  Created by Ami Garcia on 3/1/16.
//  Copyright © 2016 Ami Garcia. All rights reserved.
//

import SwiftyJSON

class Status{
    var health: Int = 0
    var attack: Int = 0
    var defense: Int = 0
    var spAttack: Int = 0
    var spDefence: Int = 0
    var speed: Int = 0
    
    
    
    required init?(json:JSON){
        self.health = json["health"].intValue
        self.attack = json["attack"].intValue
        self.defense = json["defense"].intValue
        self.spAttack = json["spAttack"].intValue
        self.speed = json["speed"].intValue
        
    }
}