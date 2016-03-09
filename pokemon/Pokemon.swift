//
//  Pokemon.swift
//  pokemon
//
//  Created by Ami Garcia on 3/1/16.
//  Copyright © 2016 Ami Garcia. All rights reserved.
//

import SwiftyJSON

class Pokemon{

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
        self.number = json["number"].intValue
        self.name = json["name"].stringValue
        self.icon = json["icon"].stringValue
        self.image = json["image"].stringValue
        self.level = json["level"].intValue
        self.type1 = json["type1"].stringValue
        self.type2 = json["type2"].stringValue
        self.status = Status(json: "Status")!
//        self.skills = Skill(json: "skills")
        
    }

    

}
