//
//  CollectionViewCell.swift
//  CollectionViewDetail
//
//  Created by Goutham Raj N on 18/08/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var frontView : UIView = {
        let froView = UIView()
        froView.translatesAutoresizingMaskIntoConstraints = false
        //        froView.layer.cornerRadius = 30
        return froView
    }()
    
    var cellId = Int()
    
    var imgView : UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.backgroundColor = .black
        img.isHidden = true
        return img
    }()
    
    let touchView : UIView = {
        let touchView = UIView()
        touchView.translatesAutoresizingMaskIntoConstraints = false
        touchView.backgroundColor = .cyan
        //                touchView.isHidden = true
        return touchView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        collCons()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func collCons(){
        contentView.addSubview(frontView)
        frontView.addSubview(imgView)
        frontView.addSubview(touchView)
        
        contentView.widthAnchor.constraint(equalTo: widthAnchor,multiplier: 0.4).isActive = true
        contentView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        contentView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
        frontView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        frontView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        frontView.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor).isActive = true
        frontView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
        touchView.topAnchor.constraint(equalTo: frontView.topAnchor).isActive = true
        touchView.leadingAnchor.constraint(equalTo: frontView.leadingAnchor).isActive = true
        touchView.centerXAnchor.constraint(equalTo: frontView.centerXAnchor).isActive = true
        touchView.centerYAnchor.constraint(equalTo: frontView.centerYAnchor).isActive = true
        
        
        
        imgView.topAnchor.constraint(equalTo: frontView.topAnchor).isActive = true
        imgView.leadingAnchor.constraint(equalTo: frontView.leadingAnchor ).isActive = true
        imgView.heightAnchor.constraint(equalTo: frontView.heightAnchor).isActive = true
        imgView.widthAnchor.constraint(equalTo: frontView.widthAnchor).isActive = true
        
    }
    
    func flip() {
        
        let flipSide: UIView.AnimationOptions = self.frontView.isHidden ? .transitionFlipFromLeft : .transitionFlipFromRight
        
        UIView.transition(with: self.contentView, duration: 0.3, options: flipSide, animations: { [weak self]  () -> Void in
            self?.imgView.isHidden = !(self?.imgView.isHidden ?? true)
            self?.touchView.isHidden = !(self?.touchView.isHidden ?? true)
        }, completion: nil)
        
    }
    
}

