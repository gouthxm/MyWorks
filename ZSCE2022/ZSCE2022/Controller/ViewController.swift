//
//  ViewController.swift
//  ZSCE2022
//
//  Created by Goutham Raj N on 30/08/22.
//

import UIKit



class ViewController: UIViewController,SendingStringToViewcontroller,SendingArrayToViewcontroller{
    

    
    
    let label:UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.backgroundColor = .cyan
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    let label2:UILabel = {
        let label = UILabel()
        label.text = "Age"
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    let label3:UILabel = {
        let label = UILabel()
        label.text = "Phone Number"
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    let label4:UILabel = {
        let label = UILabel()
        label.text = "Adress"
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    let button:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .gray
        button.setTitle("button", for: .normal)
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        return button
    }()

    @objc func buttonClicked(){
        let secondVc = SecondViewController()
        navigationController?.pushViewController(secondVc, animated: true)
        secondVc.delegate = self
        secondVc.ageDelagate = self
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        view.addSubview(button)
        firstControllerConstraints()
        // Do any additional setup after loading the view.
    }
    
    func sendStringDataToFirstViewController(myData: String) {
        self.label.text = myData
    }
    
    func sendArrayDataToFirstViewController(arrayData: [String]) {
        self.label2.text = arrayData[0]
        self.label3.text = arrayData[1]
        self.label4.text = arrayData[2]

    }
    

    
    func firstControllerConstraints(){
        view.addSubview(label)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(button)
        
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 10).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.heightAnchor.constraint(equalToConstant: 40).isActive = true
        label.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        label2.topAnchor.constraint(equalTo:label.bottomAnchor,constant: 10).isActive = true
        label2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        label2.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        label3.topAnchor.constraint(equalTo: label2.bottomAnchor,constant: 10).isActive = true
        label3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label3.heightAnchor.constraint(equalToConstant: 40).isActive = true
        label3.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        label4.topAnchor.constraint(equalTo: label3.bottomAnchor,constant: 10).isActive = true
        label4.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label4.heightAnchor.constraint(equalToConstant: 40).isActive = true
        label4.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        button.topAnchor.constraint(equalTo: label4.bottomAnchor,constant: 20).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }

}

