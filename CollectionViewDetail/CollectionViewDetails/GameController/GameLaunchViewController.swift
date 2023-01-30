//
//  GameLaunchViewController.swift
//  CollectionViewDetail
//
//  Created by Goutham Raj N on 05/09/22.
//

import UIKit

class GameLaunchViewController: UIViewController {
    
    let gameStartButton: UIButton = {
        let gameStartButton = UIButton()
        gameStartButton.backgroundColor = .cyan
        gameStartButton.setTitleColor(.black, for: .normal)
        gameStartButton.setTitle("Start", for: .normal)
        gameStartButton.layer.cornerRadius = 10
        gameStartButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 28)
        gameStartButton.translatesAutoresizingMaskIntoConstraints = false
        gameStartButton.addTarget(self, action: #selector(startButtonClicked), for: .touchUpInside)
        return gameStartButton
    }()
    let imageView: UIImageView = {
        let imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.image = UIImage(named: "backImg")
        return imgView
    }()

    @objc func startButtonClicked(){
        let secondVc = GameViewController()
        navigationController?.pushViewController(secondVc, animated: true)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        startConstaints()
        // Do any additional setup after loading the view.
    }
    
    
    
    func startConstaints(){
        
        view.addSubview(imageView)
        view.addSubview(gameStartButton)

        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        gameStartButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        gameStartButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        gameStartButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }



}
