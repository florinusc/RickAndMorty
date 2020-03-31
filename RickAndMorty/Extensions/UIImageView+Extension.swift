//
//  UIImageView+Extension.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 31/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import UIKit

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
