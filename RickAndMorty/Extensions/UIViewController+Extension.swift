//
//  UIViewController+Extension.swift
//  RickAndMorty
//
//  Created by Florin Uscatu on 30/03/2020.
//  Copyright © 2020 Florin Uscatu. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func presentAlert(for error: Error?) {
        guard let error = error else { return }
        let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
}
