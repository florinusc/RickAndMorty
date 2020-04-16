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
    
    init(character: Character) {
        self.character = character
    }
    
    func viewDidLoad() {}
    
}
