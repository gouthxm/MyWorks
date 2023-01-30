//
//  ViewController.swift
//  SceneDelegateTrial
//
//  Created by Goutham Raj N on 20/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    let buttons  = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        buttonCons()
//        let detailcontroller = newViewController()
//
//        let nav = UINavigationController(rootViewController: detailcontroller)
//
//        navigationController?.pushViewController(nav, animated: true)
        print("yes")
    }
    
    func buttonCons(){
        view.addSubview(buttons)
        
        buttons.backgroundColor = .black
        buttons.translatesAutoresizingMaskIntoConstraints = false
        buttons.addTarget(self, action: #selector(actionButton), for: .touchUpInside)
        
        buttons.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        buttons.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        buttons.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
       
        
    }
    @objc func actionButton(){
        let vc = newViewController()
        
        let nv = UINavigationController(rootViewController: vc)
        navigationController?.pushViewController(nv, animated: true)
        print(nv)
    }
}
//
//struct Details{
//    var name:String
//    var age = 19
//}
//var detail = details(name: "harry")


