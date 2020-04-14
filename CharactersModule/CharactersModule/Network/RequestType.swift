//
//  RequestType.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 06/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import Foundation

public enum RequestType {
    case characters
}

extension RequestType {
    
    var request: URLRequest? {
        guard let url = URL(string: url) else { return nil }
        return URLRequest(url: url)
    }
    
    private var url: String {
        let baseURL = "https://rickandmortyapi.com/api/"
        switch self {
        case .characters:
            return baseURL + "character"
        }
    }
    
}
