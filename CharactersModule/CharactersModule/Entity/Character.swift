//
//  Character.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 05/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import Foundation

public struct Character: Decodable {
    public let id: Int
    public let name: String
    public let species: String
    public let gender: String
    public let location: Location
    public let origin: Location
    public let image: String
    public let url: String
    public let episodes: [String]?
}

extension Character: Hashable {}
