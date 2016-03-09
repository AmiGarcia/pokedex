//
//  Skill.swift
//  pokemon
//
//  Created by Ami Garcia on 3/1/16.
//  Copyright © 2016 Ami Garcia. All rights reserved.
//

import SwiftyJSON

class Skill{
    var name: String = ""
    var type: String = ""
    var damageCategory: String = ""
    var power: Int = 0
    var accuracy: Int = 0
    var powerPoint: Int = 0
    
    required init?(json:JSON){
        self.name = json["name"].stringValue
        self.type = json["type"].stringValue
        self.damageCategory = json["damageCategory"].stringValue
        self.power = json["power"].intValue
        self.accuracy = json["accuracy"].intValue
        self.powerPoint = json["powerPoint"].intValue
        
    }
    
}