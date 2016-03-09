//
//  LoginController.swift
//  pokemon
//
//  Created by Ami Garcia on 3/4/16.
//  Copyright © 2016 Ami Garcia. All rights reserved.
//

import Foundation
import SwiftyJSON


class LoginController {
    
    func login(rf: (Bool, String, Trainer?) -> Void) {
        if let path = NSBundle.mainBundle().pathForResource("pokemons", ofType: "json"){
            do{
                let data = try NSData(contentsOfURL: NSURL(fileURLWithPath: path), options: NSDataReadingOptions.DataReadingMappedIfSafe)
                let jsonObj = JSON(data: data)
                let trainer = Trainer(json: jsonObj)
                if jsonObj != JSON.null{
                    print("jsonData:\(jsonObj)")
                    rf(true,"Sucesso",trainer)
                }else{
                    print("Could not get json file")
                    rf(false,"Could not get json file",nil)
                }
            }catch let error as NSError{
                print(error.localizedDescription)
            }
        }else{
            rf(false,"invalid path",nil)
        }
        
        
        
    }
    
}