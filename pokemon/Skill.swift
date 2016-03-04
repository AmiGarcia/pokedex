//
//  Skill.swift
//  pokemon
//
//  Created by Ami Garcia on 3/1/16.
//  Copyright © 2016 Ami Garcia. All rights reserved.
//

import Gloss

class Skill: Decodable{
    var name: String = ""
    var type: String = ""
    var damageCategory: String = ""
    var power: Int = 0
    var accuracy: Int = 0
    var powerPoint: Int = 0
    
    required init?(json:JSON){
        self.name = ("name" <~~ json)!
        self.type = ("type" <~~ json)!
        self.damageCategory = ("damageCategory" <~~ json)!
        self.power = ("power" <~~ json)!
        self.accuracy = ("accuracy" <~~ json)!
        self.powerPoint = ("powerPoint" <~~ json)!
        
    }
    
}