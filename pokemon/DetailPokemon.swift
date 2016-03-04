//
//  DetailPokemon.swift
//  pokemon
//
//  Created by Ami Garcia on 3/2/16.
//  Copyright © 2016 Ami Garcia. All rights reserved.
//

import UIKit

class DetailPokemon: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var imagePokemon: UIImageView!
    @IBOutlet weak var lblNamePokemon: UILabel!
    @IBOutlet weak var lblPokemonNumber: UILabel!
    @IBOutlet weak var lblPokemonType2: UILabel!
    @IBOutlet weak var lblPokemonType: UILabel!
    
    
    @IBOutlet weak var lblPokemonHP: UILabel!
    
    @IBOutlet weak var lblPokemonATK: UILabel!
    @IBOutlet weak var lblPokemonDEF: UILabel!
    @IBOutlet weak var lbPokemonSpeedATK: UILabel!
    @IBOutlet weak var lblPokemonSpeedDEF: UILabel!
    @IBOutlet weak var lblPokemonSpeed: UILabel!
    
    
    @IBOutlet weak var progressPokemonHP: UIProgressView!
    @IBOutlet weak var progressPokemonATK: UIProgressView!
    @IBOutlet weak var progressPokemonDEF: UIProgressView!
    @IBOutlet weak var progressPokemonSpeedATK: UIProgressView!
    @IBOutlet weak var progressPokemonSpeedDEF: UIProgressView!
    @IBOutlet weak var progressPokemonSpeed: UIProgressView!
    
    
    var pokemon: Pokemon!
    
    override func viewDidLoad() {
        configurePokemonProfile()
        
    }
    func configurePokemonProfile(){
        
        imagePokemon.layer.cornerRadius = self.imagePokemon.frame.size.width / 2
        imagePokemon.clipsToBounds = true
        
        
        lblNamePokemon.text = pokemon.name
        lblPokemonNumber.text = String(pokemon.number)
        lblPokemonHP.text = String(pokemon.status.health)
        lblPokemonATK.text = String(pokemon.status.attack)
        lblPokemonDEF.text = String(pokemon.status.defense)
        lbPokemonSpeedATK.text = String(pokemon.status.spAttack)
        lblPokemonSpeedDEF.text = String(pokemon.status.spDefence)
        lblPokemonSpeed.text = String(pokemon.status.speed)
        lblPokemonType.text = pokemon.type1
        lblPokemonType2.text = pokemon.type2
        
        let pokemonHP: Float = (Float(pokemon.status.health)) / 300
        let pokemonATK: Float = (Float(pokemon.status.attack)) / 300
        let pokemonDEF: Float = (Float(pokemon.status.defense)) / 300
        let pokemonSPA: Float = (Float(pokemon.status.spAttack)) / 300
        let pokemonSPD: Float = (Float(pokemon.status.spDefence)) / 300
        let pokemonSpeed: Float = (Float(pokemon.status.speed)) / 300
        
        progressPokemonHP.setProgress(pokemonHP, animated: true)
        progressPokemonATK.setProgress(pokemonATK, animated: true)
        progressPokemonDEF.setProgress(pokemonDEF, animated: true)
        progressPokemonSpeedATK.setProgress(pokemonSPA, animated: true)
        progressPokemonSpeedDEF.setProgress(pokemonSPD, animated: true)
        progressPokemonSpeed.setProgress(pokemonSpeed, animated: true)
        
        if let url = NSURL(string: pokemon.image) {
            if let data = NSData(contentsOfURL: url) {
                imagePokemon.image = UIImage(data: data)
            }
        }
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemon.skills.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:PokemonSkillCell = self.tableView.dequeueReusableCellWithIdentifier("cellSkill")! as! PokemonSkillCell
        cell.configureCellWithSkill(pokemon.skills[indexPath.row])
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
    }
    
    
    @IBAction func dismissDetail(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
}
