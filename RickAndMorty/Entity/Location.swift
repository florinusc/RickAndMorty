//
//  Location.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 05/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import Foundation

struct Location: Decodable {
    let name: String
    let url: String
}

extension Location: Hashable {}
