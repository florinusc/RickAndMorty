//
//  Character.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 05/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import Foundation

public struct Character: Decodable {
    let id: Int
    let name: String
    let species: String
    let gender: String
    let location: Location
    let origin: Location
    let image: String
    let url: String
    let episodes: [String]?
}

extension Character: Hashable {}
