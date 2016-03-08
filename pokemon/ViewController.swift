//
//  ViewController.swift
//  pokemon
//
//  Created by Ami Garcia on 3/1/16.
//  Copyright © 2016 Ami Garcia. All rights reserved.
//

import UIKit
import Alamofire
import Gloss

class ViewController: UIViewController {
    
    @IBOutlet weak var trainerUser: UITextField!
    @IBOutlet weak var trainerPassword: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    //    func requestServer(user: String, pw: String){
    ////        let parametersLogin = ["user": user, "password":pw]
    //
    //
    //
    ////        Alamofire.request(.GET, "http://server03.local:60080/login", parameters: parametersLogin).responseJSON { response in
    ////
    ////            if let json = response.result.value {
    ////                let response = json["response"] as! String == "true"
    ////
    ////                if response{
    ////                    let trainer = Trainer(json: json["data"] as! JSON)
    ////                    self.performSegueWithIdentifier("loginToMain", sender: trainer)
    ////                    print("deu certo")
    ////                    print(json)
    ////                }else{
    ////                    let message = json["message"] as! String
    ////                    print(message)
    ////                }
    ////
    ////            }
    //
    ////        }
    //
    //
    //    }
    
    @IBAction func login(sender: AnyObject) {
        let user = trainerUser.text!
        let password = trainerPassword.text!
        
        let lc = LoginController()
        lc.login(user, pw: password,rf: loginResponse)
        
    }
    private func loginResponse(sucess: Bool,message: String, trainer: Trainer?){
        if sucess{
            self.performSegueWithIdentifier("loginToMain", sender: trainer)
            print("login feito com sucesso!")
        }else{
            print("Login falhou! Mensagem:" + (message))
        }
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "loginToMain"{
            let vc = segue.destinationViewController as! PokedexMain
            vc.trainer = sender as! Trainer
        }
    }
    
    
    
    
}
