//
//  GameView.swift
//  CollectionViewDetail
//
//  Created by Goutham Raj N on 30/08/22.
//

import UIKit

class GameView: UIView{
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 40
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return cv
    }()
    let countView: UILabel = {
        let countView = UILabel()
        countView.translatesAutoresizingMaskIntoConstraints = false
        
        
        return countView
    }()
   
    override init(frame: CGRect) {
        super.init(frame: .zero)
//        self.cellViewCons()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    
    func cellViewCons(){
        
        self.addSubview(collectionView)
        self.addSubview(countView)
        
        countView.topAnchor.constraint(equalTo: self.topAnchor,constant: 60).isActive = true
        countView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor,constant: -10).isActive  = true
        
        
        
        collectionView.topAnchor.constraint(equalTo: self.topAnchor,constant: 10).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 10).isActive = true
//        collectionView.widthAnchor.constraint(equalToConstant: 80).isActive = true
//        collectionView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -10).isActive = true
        //collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -40).isActive = true
        collectionView.bottomAnchor.constraint(equalTo:self.bottomAnchor,constant: -10).isActive = true

        collectionView.showsHorizontalScrollIndicator = false
    }
}
