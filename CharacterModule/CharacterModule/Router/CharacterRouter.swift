//
//  CharacterRouter.swift
//  CharacterScreen
//
//  Created by Florin Uscatu on 08/04/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import UIKit
import Common

public class CharacterRouter: Router {
    
    public init() {}
    
    public func presentCharacterScreen(character: Character, from baseViewController: UIViewController) {
        let characterInteractor = CharacterInteractor()
        let characterPresenter = CharacterPresenter(character: character)
        characterPresenter.router = self
        characterPresenter.interactor = characterInteractor
        let characterViewController = CharacterViewController.getInstance(presenter: characterPresenter)
        baseViewController.present(characterViewController, animated: true, completion: nil)
    }
}
