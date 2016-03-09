//
//  Trainer.swift
//  pokemon
//
//  Created by Ami Garcia on 3/1/16.
//  Copyright © 2016 Ami Garcia. All rights reserved.
//

import SwiftyJSON

class Trainer{

    var name = ""
    var age = 0
    var photo = ""
    var town = ""
    var onHandPokemons=[Pokemon]()
    
    required init?(json:JSON){
        self.name = json["name"].stringValue
        self.age = json["age"].intValue
        self.photo = json["photo"].stringValue
        self.town = json["town"].stringValue
//        self.onHandPokemons = 
    }
    
}