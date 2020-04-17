//
//  ViewController.swift
//  CharacterScreen
//
//  Created by Florin Uscatu on 05/04/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import UIKit
import Common

class CharacterViewController: UIViewController, View {
    
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var locationLabel: UILabel!
    @IBOutlet private weak var genderLabel: UILabel!
    @IBOutlet private weak var speciesLabel: UILabel!
    @IBOutlet private weak var episodesLabel: UILabel!
    
    var presenter: CharacterPresenter!
    
    static var storyboardName: String {
        return "Main"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        setup()
    }
    
    private func setup() {
        nameLabel.text = presenter.name
        if let url = URL(string: presenter.imageUrl) {
            imageView.load(url: url)
        }
        genderLabel.text = presenter.gender
        locationLabel.text = presenter.location
        speciesLabel.text = presenter.species
        episodesLabel.text = presenter.episodes
    }
}

