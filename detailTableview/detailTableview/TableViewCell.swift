//
//  TableViewCell.swift
//  detailTableview
//
//  Created by Goutham Raj N on 17/08/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    let imageview : UIImageView = {
       let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
//        img.image = UIImage(named:data.saveImge[indexPath.row] )
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    let optLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "Favourites"
        
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        cons()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
    
    func cons(){
        
        contentView.addSubview(imageview)
        contentView.addSubview(optLabel)
        
        imageview.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 17).isActive = true
        imageview.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageview.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        imageview.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        optLabel.leadingAnchor.constraint(equalTo: imageview.trailingAnchor,constant: 60).isActive = true
        optLabel.topAnchor.constraint(equalTo: imageview.topAnchor,constant: 4).isActive = true
        optLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor,multiplier: 0.7).isActive = true
    }

}
