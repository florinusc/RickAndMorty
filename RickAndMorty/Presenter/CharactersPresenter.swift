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
    
    weak var view: CharactersViewController?
    
    required init(router: CharactersRouter, interactor: CharactersInteractor) {
        self.router = router
        self.interactor = interactor
    }
    
    func viewDidLoad() {
        interactor.fetchCharacters()
    }
}

extension CharactersPresenter: CharactersInteractorOutput {
    func charactersFetched(result: Result<[Character], Error>) {
        let newResult = result.map { (characters) -> [CharacterCellPresenter] in
            return characters.map { CharacterCellPresenter(character: $0) }
        }
        DispatchQueue.main.async {
            self.view?.update(with: newResult)
        }
    }
}
