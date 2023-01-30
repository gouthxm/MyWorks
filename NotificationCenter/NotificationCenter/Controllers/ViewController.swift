//
//  ViewController.swift
//  NotificationCenter
//
//  Created by Goutham Raj N on 05/09/22.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func buttonTapped() {
        let userInfo = ["text": "I changed to grey"]
        NotificationCenter.default.post(
            name:.notifycolorChange,
            object: nil,
            userInfo: userInfo
        )
        view.backgroundColor = .gray
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension Notification.Name {
    public static let notifycolorChange = Notification.Name(rawValue: "colorChanged")
}


