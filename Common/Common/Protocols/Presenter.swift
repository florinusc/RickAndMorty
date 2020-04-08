//
//  Presenter.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 06/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import Foundation

public protocol Presenter: class {
    associatedtype RouterType: Router
    associatedtype InteractorType: Interactor
    associatedtype ViewType: View
    var router: RouterType { get }
    var interactor: InteractorType { get }
    var view: ViewType? { get set }
    init(router: RouterType, interactor: InteractorType)
    func viewDidLoad()
}

