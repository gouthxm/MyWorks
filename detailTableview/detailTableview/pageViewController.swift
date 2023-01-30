//
//  pageViewController.swift
//  detailTableview
//
//  Created by Goutham Raj N on 18/08/22.
//

import UIKit

class pageViewController: UIViewController {
    
    let contentImg : UIImageView = {
       let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
//        img.image = UIImage(systemName: "star")
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    let pageLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Favourites"
        
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        contentCon()
        // Do any additional setup after loading the view.
    }
    
    func contentCon(){
        view.addSubview(contentImg)
        view.addSubview(pageLabel)

        
        contentImg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 40 ).isActive = true
        contentImg.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        contentImg.heightAnchor.constraint(equalToConstant: 100).isActive = true
        contentImg.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        pageLabel.topAnchor.constraint(equalTo: view.topAnchor,constant: 30).isActive = true
//        contentLabel.widthAnchor.constraint(equalTo: view.widthAnchor,multiplier: 0.5).isActive = true
        
        pageLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -2).isActive = true
        
    }


}
