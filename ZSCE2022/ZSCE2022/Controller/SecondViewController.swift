//
//  SecondViewController.swift
//  ZSCE2022
//
//  Created by Goutham Raj N on 01/09/22.
//

import UIKit
protocol SendingStringToViewcontroller{
    func sendStringDataToFirstViewController(myData: String)
}
protocol SendingArrayToViewcontroller{
    func sendArrayDataToFirstViewController(arrayData: [String])
}
protocol SendingDictionaryToViewcontroller{
    func sendStringDictionaryToFirstViewController(objDictionary: Dictionary<String, String>)
}


class SecondViewController: UIViewController {
    
    var delegate: SendingStringToViewcontroller? = nil
    var ageDelagate: SendingArrayToViewcontroller? = nil


    
    let textField:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .gray
        textField.placeholder = "Type Your Name"
        textField.keyboardType = UIKeyboardType.decimalPad
        return textField
    }()
    
    let textField2:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .gray
        textField.placeholder = "Type your Age"
        textField.keyboardType = UIKeyboardType.decimalPad
        return textField
    }()
    
    let textField3:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .gray
        textField.placeholder = "Type Your Number"
        textField.keyboardType = UIKeyboardType.decimalPad
        return textField
    }()
    
    let textField4:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .gray
        textField.placeholder = "Type your Email"
        textField.keyboardType = UIKeyboardType.decimalPad
        return textField
    }()
    
    let button:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .gray
        button.setTitle("button", for: .normal)
        button.addTarget(self, action: #selector(secondButtonClicked), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        secondViewControllerConstraints()
    }
    
    @objc func secondButtonClicked(){
        view.backgroundColor = .blue
        if self.delegate != nil && self.textField.text != nil  && self.textField2.text != nil  && self.textField3.text != nil  && self.textField4.text != nil{
            
            guard let tf2 = textField2.text, let tf3 = textField3.text ,let  tf4 = textField4.text else{
                return
            }
            let arr = [tf2,tf3,tf4]
            let dataToBeSent = arr
            self.delegate?.sendStringDataToFirstViewController(myData: textField.text!)
            
            self.ageDelagate?.sendArrayDataToFirstViewController(arrayData: arr)
            dismiss(animated: true, completion: nil)
      }
        
        
        
        
        self.navigationController?.popToRootViewController(animated: true)

    }
    
    
    func secondViewControllerConstraints(){
        
        view.addSubview(textField)
        view.addSubview(textField2)
        view.addSubview(textField3)
        view.addSubview(textField4)

        view.addSubview(button)
        
        textField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 20).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textField.widthAnchor.constraint(equalTo: view.widthAnchor,multiplier: 0.7).isActive = true
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        textField2.topAnchor.constraint(equalTo: textField.bottomAnchor,constant: 20).isActive = true
        textField2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textField2.widthAnchor.constraint(equalTo: view.widthAnchor,multiplier: 0.7).isActive = true
        textField2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        textField3.topAnchor.constraint(equalTo: textField2.bottomAnchor,constant: 20).isActive = true
        textField3.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textField3.widthAnchor.constraint(equalTo: view.widthAnchor,multiplier: 0.7).isActive = true
        textField3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        textField4.topAnchor.constraint(equalTo: textField3.bottomAnchor,constant: 20).isActive = true
        textField4.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textField4.widthAnchor.constraint(equalTo: view.widthAnchor,multiplier: 0.7).isActive = true
        textField4.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        button.topAnchor.constraint(equalTo: textField4.bottomAnchor,constant: 20).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }



}
