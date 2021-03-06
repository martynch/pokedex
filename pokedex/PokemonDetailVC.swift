//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by Martyn Cheatle on 10/11/2016.
//  Copyright © 2016 Martyn Cheatle. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var evoLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = pokemon.name.capitalized
        
        let img = UIImage(named: "\(pokemon.pokedexId)")
        
        mainImg.image = img
        currentEvoImg.image = img
        pokedexLbl.text = "\(pokemon.pokedexId)"
        pokemon.downloadPokemonDetail {
            
            // Whatever we write will only be called after the network call is compelte!
//            self.updateUI()
//        }
        
    }
    
//    func updateUI() {
//        
//        attackLbl.text = pokemon.attack
//        defenseLbl.text = pokemon.defence
//        heightLbl.text = pokemon.height
//        weightLbl.text = pokemon.weight
//        typeLbl.text = pokemon.type
//        descriptionLbl.text = pokemon.description
//        
//        if pokemon.nextEvolutionId == "" {
//            
//            evoLbl.text = "No Evolutions"
//            nextEvoImg.isHidden = true
//            
//        } else {
//            
//            nextEvoImg.isHidden = false
//            nextEvoImg.image = UIImage(named: pokemon.nextEvolutionId)
//            let str = "Next Evolution: \(pokemon.nextEvolutionName) - LVL \(pokemon.nextEvolutionLevel)"
//            evoLbl.text = str
//        }
    }
    
}
