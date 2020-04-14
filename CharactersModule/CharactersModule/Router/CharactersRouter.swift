//
//  Router.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 06/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import UIKit
import Common

public class CharactersRouter: Router {
    
    private let window: UIWindow
    
    public init(window: UIWindow) {
        self.window = window
    }
    
    public func start() {
        let charactersInteractor = CharactersInteractor()
        let charactersPresenter = CharactersPresenter(router: self, interactor: charactersInteractor)
        charactersInteractor.output = charactersPresenter
        let charactersViewController = CharactersViewController.getInstance(presenter: charactersPresenter)
        charactersPresenter.view = charactersViewController
        window.rootViewController = charactersViewController
        window.makeKeyAndVisible()
    }
    
    func showCharacterScreen() {
        
    }
    
}
