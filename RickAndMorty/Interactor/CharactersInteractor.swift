//
//  CharactersInteractor.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 06/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import Foundation

protocol CharactersInteractorInput: class {
    func fetchCharacters()
}

protocol CharactersInteractorOutput: class {
    func charactersFetched(result: Result<[Character], Error>)
}

class CharactersInteractor {
    
    private let sessionManager = SessionManager()
    
    weak var output: CharactersInteractorOutput?
    
    init(output: CharactersInteractorOutput) {
        self.output = output
    }
    
}

extension CharactersInteractor: CharactersInteractorInput {
    
    func fetchCharacters() {
        sessionManager.request(type: .characters) { [weak self] (result) in
            switch result {
            case .failure(let error):
                self?.output?.charactersFetched(result: .failure(error))
            case .success(let data):
                do {
                    let characters = try JSONDecoder().decode(Characters.self, from: data)
                    self?.output?.charactersFetched(result: .success(characters.results))
                } catch let error {
                    self?.output?.charactersFetched(result: .failure(error))
                }
            }
        }
    }
    
}
