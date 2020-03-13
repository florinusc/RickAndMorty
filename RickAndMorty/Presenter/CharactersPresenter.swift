//
//  CharactersPresenter.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 06/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import UIKit

class CharactersPresenter: Presenter {
    
    let router: CharactersRouter
    let interactor: CharactersInteractor
    
    required init(router: CharactersRouter, interactor: CharactersInteractor) {
        self.router = router
        self.interactor = interactor
    }
}

extension CharactersPresenter: CharactersInteractorOutput {
    func charactersFetched(result: Result<[Character], Error>) {
        
    }
}
