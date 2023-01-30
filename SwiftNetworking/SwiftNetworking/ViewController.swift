//
//  ViewController.swift
//  SwiftNetworking
//
//  Created by Goutham Raj N on 29/09/22.
//

import UIKit
import AFNetworking

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var url = NSURL(string: "https://jsonplaceholder.typicode.com/users")
        var request = NSURLRequest(Url:url)
        var operation = afhttp
    }


}


