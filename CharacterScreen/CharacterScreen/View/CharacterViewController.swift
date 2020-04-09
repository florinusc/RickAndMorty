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
    
    var presenter: CharacterPresenter!
    
    static var storyboardName: String {
        return "Main"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
}

