//
//  CharactersPresenter.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 06/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import UIKit
import Common

class CharactersPresenter: Presenter {
   
    var router: CharactersRouter!
    var interactor: CharactersInteractor!
    
    weak var view: CharactersViewController?
    
    private var characters = [Character]()
    
    func viewDidLoad() {
        interactor.fetchCharacters()
    }
    
    func showCharacterScreen(at index: Int) {
        router.presentCharacterScreen(for: characters[index])
    }
}

extension CharactersPresenter: CharactersInteractorOutput {
    func charactersFetched(result: Result<[Character], Error>) {
        let newResult = result.map { (characters) -> [CharacterCellPresenter] in
            self.characters = characters
            return characters.map { CharacterCellPresenter(character: $0) }
        }
        DispatchQueue.main.async {
            self.view?.update(with: newResult)
        }
    }
}
