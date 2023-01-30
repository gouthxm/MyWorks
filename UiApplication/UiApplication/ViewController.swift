//
//  ViewController.swift
//  UiApplication
//
//  Created by Goutham Raj N on 09/08/22.
//

import UIKit

class ViewController: UIViewController {

    
    //let viewer = MainView(coder: MainView)
    
    let mainview : MainView = {
        let mv = MainView()
        mv.translatesAutoresizingMaskIntoConstraints = false
        return mv
    }()
    
    var resultData : [ToDo] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        cons()
//        toSetViewConstraints()
//        toAddViewToShowCollection() 
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("view will dissapear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("view did dissapear")
    }
    
    
    
    func cons(){
        view.addSubview(mainview)

        mainview.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mainview.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mainview.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        mainview.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    









//
//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos")
//        else{
//            return
//        }
//
//        let session = URLSession.shared.dataTask(with: url){
//            data, response,error in
//
//            if let error = error {
//                print("there was an error:\(error.localizedDescription)")
//
//            }else{
//                // put nil check for data
//                let jsonRes = try?JSONSerialization.jsonObject(with: data!,options: [])
//
//                if let respArr = jsonRes as? [Dictionary<String,Any>] {
//
//                }
//
//                print("The response\(jsonRes)")
//            }
//        }.resume()
        
}
