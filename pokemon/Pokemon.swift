//
//  Pokemon.swift
//  pokemon
//
//  Created by Ami Garcia on 3/1/16.
//  Copyright © 2016 Ami Garcia. All rights reserved.
//

import Gloss

class Pokemon: Decodable{

    var number: Int = 0
    var name: String = ""
    var icon: String = ""
    var image: String = ""
    var level: Int = 0
    var type1: String = ""
    var type2: String?
    var status: Status
    var skills:[Skill] = []
    
    required init?(json:JSON){
        self.number = ("number" <~~ json)!
        self.name = ("name" <~~ json)!
        self.icon = ("icon" <~~ json)!
        self.image = ("image" <~~ json)!
        self.level = ("level" <~~ json)!
        self.type1 = ("type1" <~~ json)!
        self.type2 = "type2" <~~ json
        self.status = ("status" <~~ json)!
        self.skills = ("skills" <~~ json)!
        
    }

    

}
