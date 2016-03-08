//
//  LoginController.swift
//  pokemon
//
//  Created by Ami Garcia on 3/4/16.
//  Copyright © 2016 Ami Garcia. All rights reserved.
//

import Foundation
import Alamofire
import Gloss

class LoginController {
    
    func login(u: String, pw: String, rf: (Bool, String, Trainer?) -> Void) {
        
        let parametersLogin = ["user": u, "password": pw]
        Alamofire.request(.GET, "http://server03.local:60080/login", parameters: parametersLogin).responseJSON { response in
            
            if let json = response.result.value {
                let response = json["response"] as! String == "true"
                
                if response {
                    let trainer = Trainer(json: json["data"] as! JSON)
                    rf(true, "Socesso", trainer)
                    
                    print("deu certo")
                    print(json)
//                    return true
                    
                }else{
                    let message = json["message"] as! String
                    rf(false, message, nil)
                    print(message)
//                    return false
                    
                }
                
            }
            
            
        }
        
    }
    
}