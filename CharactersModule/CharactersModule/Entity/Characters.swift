//
//  Characters.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 06/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import Foundation

public struct Characters: Decodable {
    public let info: Info
    public let results: [Character]
}

public struct Info: Decodable {
    public let count: Int
    public let pages: Int
    public let next: String
    public let prev: String
}
