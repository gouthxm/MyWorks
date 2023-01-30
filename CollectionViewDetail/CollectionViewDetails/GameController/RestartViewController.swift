//
//  RestartViewController.swift
//  CollectionViewDetail
//
//  Created by Goutham Raj N on 05/09/22.
//

import UIKit

class RestartViewController: UIViewController {
    let gameView = GameViewController()
    var countIng : Int = 0
    
    
    
    let label: UILabel = {
        let label = UILabel()
       
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let mainMenuButton: UIButton = {
        let gameStartButton = UIButton()
        gameStartButton.backgroundColor = .blue
        gameStartButton.setTitle("Main Menu", for: .normal)
        gameStartButton.translatesAutoresizingMaskIntoConstraints = false
        gameStartButton.addTarget(self, action: #selector(startButtonClicked), for: .touchUpInside)
        return gameStartButton
    }()
    let restartMenuButton: UIButton = {
        let gameStartButton = UIButton()
        gameStartButton.backgroundColor = .blue
        gameStartButton.setTitle("Restart", for: .normal)
        gameStartButton.translatesAutoresizingMaskIntoConstraints = false
        gameStartButton.addTarget(self, action: #selector(restartButtonClicked), for: .touchUpInside)
        return gameStartButton
    }()
    
    @objc func startButtonClicked(){
        let secondVc = GameLaunchViewController()
        navigationController?.pushViewController(secondVc, animated: true)

    }
    
    @objc func restartButtonClicked(){
        let secondVc = GameViewController()
        navigationController?.pushViewController(secondVc, animated: true)

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        self.navigationItem.setHidesBackButton(true, animated: false)
        restartConstraints()
        // Do any additional setup after loading the view.
    }
    
    func restartConstraints(){
        view.addSubview(label)
        view.addSubview(mainMenuButton)
        view.addSubview(restartMenuButton)
        label.text = "Times Up Your Score Is: \(countIng)"
        
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: -50).isActive = true
//        label.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        label.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        mainMenuButton.centerXAnchor.constraint(equalTo: view.centerXAnchor,constant: 60).isActive = true
        mainMenuButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        mainMenuButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
//        restartMenuButton.topAnchor.constraint(equalTo: label.bottomAnchor).isActive = true
        restartMenuButton.centerXAnchor.constraint(equalTo: view.centerXAnchor,constant: -60).isActive = true
        restartMenuButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        restartMenuButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        
    }
    



}
