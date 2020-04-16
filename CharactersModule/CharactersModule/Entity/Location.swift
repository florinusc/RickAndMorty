//
//  Location.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 05/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import Foundation

public struct Location: Decodable {
    public let name: String
    public let url: String
}

extension Location: Hashable {}
