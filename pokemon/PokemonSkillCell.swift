//
//  PokemonSkillCell.swift
//  pokemon
//
//  Created by Ami Garcia on 3/2/16.
//  Copyright © 2016 Ami Garcia. All rights reserved.
//
import Foundation
import UIKit

class PokemonSkillCell: UITableViewCell{
    
    @IBOutlet weak var skillName: UILabel!
    
    @IBOutlet weak var damageCategory: UILabel!
    @IBOutlet weak var skillType: UILabel!
    @IBOutlet weak var lblPower: UILabel!
    
    @IBOutlet weak var lblAccuracy: UILabel!
    
    @IBOutlet weak var lblPowerPoints: UILabel!
    
    @IBOutlet weak var progressPowerPoints: UIProgressView!
    
    @IBOutlet weak var progressPower: UIProgressView!
    
    @IBOutlet weak var progressAccuracy: UIProgressView!
    
    func configureCellWithSkill(skill:Skill){
        
        skillName.text = skill.name
        skillType.text = skill.type
        damageCategory.text = skill.damageCategory
        lblPower.text = String(skill.power)
        lblAccuracy.text = String(skill.accuracy)
        lblPowerPoints.text = String(skill.powerPoint)
        
        let pp: Float = (Float(skill.powerPoint)) / 100
        let power: Float = (Float(skill.power)) / 200.0
        let accuracy: Float = (Float(skill.accuracy)) / 100.0
        
        progressPowerPoints.setProgress(pp, animated: true)
        progressPower.setProgress(power, animated: true)
//        progressAccuracy.setProgress(accuracy, animated: true)
        progressAccuracy.progress = accuracy
        
        print(progressAccuracy.progress)
        
    }
    
}
