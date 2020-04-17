//
//  UICollectionView+Extenstion.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 27/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import UIKit

public extension UICollectionView {
    func register<T: UICollectionViewCell>(_: T.Type) {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: String(describing: T.self), bundle: bundle)
        register(nib, forCellWithReuseIdentifier: String(describing: T.self))
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: String(describing: T.self), for: indexPath) as? T else {
            fatalError("Unable to dequeue cell")
        }
        return cell
    }
}
