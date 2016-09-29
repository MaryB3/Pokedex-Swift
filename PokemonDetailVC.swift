//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Mary Béds on 15/09/16.
//  Copyright © 2016 Maria Eugênia Teixeira. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    var pokemon: Pokemon!
    
    @IBOutlet var nameLb: UILabel!
    @IBOutlet var mainImg: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var typeLbl: UILabel!
    @IBOutlet var defenseLbl: UILabel!
    @IBOutlet var heightLbl: UILabel!
    @IBOutlet var pokedexLbl: UILabel!
    @IBOutlet var wightLbl: UILabel!
    @IBOutlet var attackLbl: UILabel!
    
    
    @IBOutlet var currentEvoImg: UIImageView!
    @IBOutlet var nextEvoImg: UIImageView!
    @IBOutlet var evoLbl: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLb.text = pokemon.name.capitalized
        
        let img = UIImage(named: "\(pokemon.pokedexId)")
        mainImg.image = img
        currentEvoImg.image = img
        pokedexLbl.text = "\(pokemon.pokedexId)"
        
        
        pokemon.downloadPokemonDetail {
            
            //IT'LL ONLY CALL AFTER NETWORS IS COMPLETED
            self.updateUI()
        }
        
       
    }

    func updateUI(){
        
        attackLbl.text = pokemon.attack
        defenseLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        wightLbl.text = pokemon.weight
        typeLbl.text = pokemon.type
        
        descriptionLabel.text = pokemon.description 
        
        if pokemon.nextEvolutionID == "" {
            
            evoLbl.text = "No Evolutions"
            nextEvoImg.isHidden = true
            
        } else{
            
            nextEvoImg.isHidden = false
            nextEvoImg.image = UIImage(named: pokemon.nextEvolutionID)
            let str = "Next Evolution: \(pokemon.nextEvolutionName) - \(pokemon.nextEvolutionLevel)"
            
            evoLbl.text = str
        }
        
    }
    
    
    @IBAction func backBtnPressed(_ sender: AnyObject) {
        
        dismiss(animated: true, completion: nil)
    }
    

}
