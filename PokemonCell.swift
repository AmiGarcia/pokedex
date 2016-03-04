//
//  PokemonCell.swift
//  pokemon
//
//  Created by Ami Garcia on 3/1/16.
//  Copyright © 2016 Ami Garcia. All rights reserved.
//

import Foundation
import UIKit

class PokemonCell: UITableViewCell{
    
    @IBOutlet weak var pokemonImageView: UIImageView!
    @IBOutlet weak var pokemonName: UILabel!
    @IBOutlet weak var pokemonLvl: UILabel!
    
    @IBOutlet weak var healthBar: UIProgressView!
    
    @IBOutlet weak var pokemonType01: UILabel!
    @IBOutlet weak var pokemonType02: UILabel!
    
    @IBOutlet weak var pokemonHealth: UILabel!
    
    
    func configureCellWithPokemon(pokemon:Pokemon){
        
        pokemonName.text = pokemon.name
        pokemonType01.text = pokemon.type1
        pokemonType02.text = pokemon.type2
        pokemonLvl.text = String(pokemon.level)
        pokemonHealth.text = String(pokemon.status.health)
        
        
        if let url = NSURL(string: pokemon.icon) {
            if let data = NSData(contentsOfURL: url) {
                pokemonImageView.image = UIImage(data: data)
                pokemonImageView.layer.cornerRadius = self.pokemonImageView.frame.size.width / 2
                pokemonImageView.clipsToBounds = true
                
            }
        }
        let hp: Float = (Float(pokemon.status.health)) / 500.00
        healthBar.setProgress(hp, animated: true)
        
        switch(pokemon.type1){
        case("Water"):
            pokemonType01.tintColor = UIColor.blueColor()
            break
        case("Fire"):
            pokemonType01.tintColor = UIColor.redColor()
            break
        case("Electric"):
            pokemonType01.tintColor = UIColor.yellowColor()
            break
        case("Grass"):
            pokemonType01.tintColor = UIColor.greenColor()
            break
        default:
            pokemonType01.tintColor = UIColor.blackColor()
            break
            
        }
    
        
    }
    
}
