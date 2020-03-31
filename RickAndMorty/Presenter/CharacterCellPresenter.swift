//
//  CharacterCellPresenter.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 30/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import Foundation

struct CharacterCellPresenter {
    
    var name: String { return character.name }
    var imageUrl: String { return character.image }
    
    private let character: Character
    
    init(character: Character) {
        self.character = character
    }
}

extension CharacterCellPresenter: Hashable {
    static func == (lhs: CharacterCellPresenter, rhs: CharacterCellPresenter) -> Bool {
        return lhs.character == rhs.character
    }
}
