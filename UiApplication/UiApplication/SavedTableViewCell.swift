//
//  SavedTableViewCell.swift
//  UiApplication
//
//  Created by Goutham Raj N on 10/08/22.
//

import UIKit

class SavedTableViewCell: UITableViewCell {
    
    let imageview : UIImageView = {
       let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
//        img.image = UIImage(systemName: "star")
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    let optLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "Favourites"
        
        return label
    }()
    
//    let placesLabel  : UILabel = {
//       let label = UILabel()
//        label.textColor = .lightGray
//        label.font = .systemFont(ofSize: 12)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "Private . 17 Places"
//        return label
//    }()
    
    let optImg : UIImageView = {
       let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "menu")
        img.contentMode = .scaleAspectFit
        return img
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpCell(){
        contentView.addSubview(imageview)
        contentView.addSubview(optLabel)
//        contentView.addSubview(placesLabel)
        contentView.addSubview(optImg)
        
        imageview.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 17).isActive = true
        imageview.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageview.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        imageview.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        optLabel.leadingAnchor.constraint(equalTo: imageview.trailingAnchor,constant: 18).isActive = true
        optLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -2).isActive = true
        optLabel.topAnchor.constraint(equalTo: imageview.topAnchor,constant: -4).isActive = true
        
        
//        placesLabel.leadingAnchor.constraint(equalTo: imageview.trailingAnchor,constant: 18).isActive = true
//        placesLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -2).isActive = true
//        placesLabel.topAnchor.constraint(equalTo: optLabel.bottomAnchor,constant: 5).isActive = true
//        placesLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5).isActive = true
        
        optImg.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        optImg.heightAnchor.constraint(equalToConstant: 20).isActive = true
        optImg.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        optImg.widthAnchor.constraint(equalToConstant: 20).isActive = true
    }
}

