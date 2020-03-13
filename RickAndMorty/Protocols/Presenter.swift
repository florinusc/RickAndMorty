//
//  Presenter.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 06/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import Foundation

protocol Presenter {
    associatedtype RouterType: Router
    associatedtype InteractorType: Interactor
    var router: RouterType { get }
    var interactor: InteractorType { get }
    init(router: RouterType, interactor: InteractorType)
}

