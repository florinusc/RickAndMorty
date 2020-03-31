//
//  CharacterCell.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 27/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import UIKit

class CharacterCell: UICollectionViewCell {
    
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    
    var presenter: CharacterCellPresenter! {
        didSet { setup(with: presenter) }
    }
    
    private func setup(with presenter: CharacterCellPresenter) {
        nameLabel.text = presenter.name
    }
    
}
