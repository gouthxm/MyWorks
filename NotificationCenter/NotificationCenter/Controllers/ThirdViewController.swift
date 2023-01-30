//
//  ThirdViewController.swift
//  NotificationCenter
//
//  Created by Goutham Raj N on 05/09/22.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var textlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(didReceiveColorChangeNotification(notification:)),
            name: .notifycolorChange,
            object: nil
        )
    }
    
    @objc func didReceiveColorChangeNotification(notification: Notification) {
        view.backgroundColor = .gray
        let changedText = notification.userInfo?["text"] as? String
        textlabel.text = changedText
    }
    
    deinit {
        NotificationCenter.default.removeObserver(
            self,
            name: .notifycolorChange,
            object: nil
        )
    }
}
