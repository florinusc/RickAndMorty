//
//  Router.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 06/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import UIKit

class Router {
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let charactersViewController = CharactersViewController.getInstance(presenter: CharactersPresenter())
        window.rootViewController = charactersViewController
        window.makeKeyAndVisible()
    }
    
}
