//
//  SceneDelegate.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 09/04/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import UIKit
import CharactersModule

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        guard let window = window else { return }
        window.windowScene = windowScene
        let router = CharactersRouter(window: window)
        router.start()
    }
}

