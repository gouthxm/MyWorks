//
//  ViewController.swift
//  ParseTest
//
//  Created by Goutham Raj N on 13/08/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        activityInidicator()
        // Do any additional setup after loading the view.
    }

    func activityInidicator(){
        let container = UIView()
        container.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.center = self.view.center
        
        container .addSubview(activityIndicator)
        self.view.addSubview(container)

        
        activityIndicator .startAnimating()
     

    }
}

