//
//  Router.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 06/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import UIKit
import Common
import CharacterModule

public class CharactersRouter: Router {
    
    private let window: UIWindow
    
    private weak var charactersViewController: CharactersViewController?
    
    public init(window: UIWindow) {
        self.window = window
    }
    
    public func start() {
        let charactersInteractor = CharactersInteractor()
        let charactersPresenter = CharactersPresenter()
        charactersPresenter.router = self
        charactersPresenter.interactor = charactersInteractor
        charactersInteractor.output = charactersPresenter
        let charactersViewController = CharactersViewController.getInstance(presenter: charactersPresenter)
        charactersPresenter.view = charactersViewController
        self.charactersViewController = charactersViewController
        window.rootViewController = charactersViewController
        window.makeKeyAndVisible()
    }
    
    func presentCharacterScreen(for character: Character) {
        guard let charactersViewController = self.charactersViewController else { return }
        let characterRouter = CharacterRouter()
        characterRouter.presentCharacterScreen(character: character, from: charactersViewController)
    }
    
}
