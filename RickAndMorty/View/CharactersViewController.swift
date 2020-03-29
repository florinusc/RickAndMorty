//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 05/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import UIKit

class CharactersViewController: UIViewController, View {
    
    @IBOutlet private weak var collectionView: UICollectionView!
    
    var presenter: CharactersPresenter!
    
    static var storyboardName: String {
        return "Main"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        collectionView.register(CharacterCell.self)
    }
}
