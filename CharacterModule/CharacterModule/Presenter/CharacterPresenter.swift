//
//  CharacterPresenter.swift
//  CharacterScreen
//
//  Created by Florin Uscatu on 08/04/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import Foundation
import Common

class CharacterPresenter: Presenter {
    
    let character: Character
    
    var router: CharacterRouter!
    var interactor: CharacterInteractor!
    
    weak var view: CharacterViewController?
    
    var imageUrl: String {
        return character.image
    }
    
    var name: String {
        return character.name
    }
    
    var location: String {
        return "Current location: \(character.location.name)"
    }
    
    var gender: String {
        return "Gender: \(character.gender)"
    }
    
    var species: String {
        return "Species: \(character.species)"
    }
    
    var episodes: String {
        return "\(character.episode?.count ?? 0) episodes"
    }
    
    init(character: Character) {
        self.character = character
    }
    
    func viewDidLoad() {}
    
}
