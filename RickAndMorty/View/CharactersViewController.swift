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
    
    private lazy var dataSource = makeDatasource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        setup()
    }
    
    func update(with result: Result<[CharacterCellPresenter], Error>) {
        switch result {
        case .success(let cellPresenters):
            guard cellPresenters.count > 0 else { return }
            var snapshot = dataSource.snapshot()
            if snapshot.numberOfSections == 0 {
                snapshot.appendSections([0])
            }
            snapshot.appendItems(cellPresenters, toSection: 0)
            dataSource.apply(snapshot, animatingDifferences: true)
        case .failure(let error):
            presentAlert(for: error)
        }
    }
    
    private func setup() {
        collectionView.delegate = self
        collectionView.dataSource = dataSource
        collectionView.register(CharacterCell.self)
        collectionView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
    }
    
    private func makeDatasource() -> UICollectionViewDiffableDataSource<Int, CharacterCellPresenter> {
        return UICollectionViewDiffableDataSource(collectionView: collectionView) { (collectionView, indexPath, cellPresenter) -> UICollectionViewCell? in
            let cell: CharacterCell = collectionView.dequeueReusableCell(for: indexPath)
            cell.presenter = cellPresenter
            return cell
        }
    }
}

extension CharactersViewController: UICollectionViewDelegate {}

extension CharactersViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let side = UIScreen.main.bounds.width - 20.0
        return CGSize(width: side, height: side)
    }
}
