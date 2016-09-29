//
//  Pokemon.swift
//  Pokedex
//
//  Created by Mary Béds on 8/29/16.
//  Copyright © 2016 Maria Eugênia Teixeira. All rights reserved.
//

import Foundation


class Pokemon{
    
    private var _name: String!
    private var _pokedexId: Int!
    
    private var _description: String!
    private var _defense: String!
    private var _height: String!
    private var weight: String!
    private var attack: String!
    private var _nextEvolutionTxt: String!
    
    private var _pokemonURL: String!
    
    
    var name: String {
        
        return _name;
    }
    
    var pokedexId: Int {
        
        return _pokedexId;
    }
    
    init (name: String, pokedexId: Int){
        self._name = name
        self._pokedexId = pokedexId
        
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self.pokedexId)/"
    }
    
    func downloadPokemonDetail(completed: DownloadComplete){
        
        
    }
    
    
}
