//
//  ViewController.swift
//  ScrollView
//
//  Created by Goutham Raj N on 13/09/22.
//

import UIKit

class ViewController: UIViewController {


    let label1: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum "
        
        label.numberOfLines = 0
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupViews()
    }

    func setupViews(){
        view.addSubview(label1)
        label1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
    }
    
    func fetching(){
    }
    
    

}


