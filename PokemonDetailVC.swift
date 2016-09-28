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
    

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLb.text = pokemon.name
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
