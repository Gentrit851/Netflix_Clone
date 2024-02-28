//
//  CollectionViewTableViewCell.swift
//  Netflix_Clone
//
//  Created by Florian Saqipi on 27.2.24.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {
    @IBOutlet var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.frame = .zero
      
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
}

extension CollectionViewTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }
}
