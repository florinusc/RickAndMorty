//
//  View.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 06/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import UIKit

public protocol View {
    associatedtype PresenterType: Presenter
    var presenter: PresenterType! { get set }
    static var storyboardName: String { get }
}

extension View where Self: UIViewController {
    public static func getInstance(presenter: PresenterType) -> Self {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        guard var viewController = storyboard.instantiateViewController(withIdentifier: String(describing: self)) as? Self else {
            fatalError("Could not instantiate view controller, make sure storyboard ID is set in interface builder")
        }
        viewController.presenter = presenter
        return viewController
    }
}
