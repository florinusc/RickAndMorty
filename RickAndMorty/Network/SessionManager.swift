//
//  SessionManager.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 06/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import Foundation

class SessionManager {
    
    func request(type: RequestType, _ handler: @escaping (Result<Data, Error>) -> Void) {
        guard let request = type.request else {
            handler(.failure(CustomError.general))
            return
        }
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                handler(.failure(error))
                return
            }
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let data = data else {
                handler(.failure(CustomError.network))
                return
            }
            handler(.success(data))
        }
    }

}
