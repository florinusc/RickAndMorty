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
    
    let router: CharacterRouter
    let interactor: CharacterInteractor
    
    weak var view: CharacterViewController?
    
    required init(router: CharacterRouter, interactor: CharacterInteractor) {
        self.router = router
        self.interactor = interactor
    }
    
    func viewDidLoad() {}
    
}
