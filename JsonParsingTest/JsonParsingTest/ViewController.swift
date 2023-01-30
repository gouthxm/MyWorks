//
//  ViewController.swift
//  JsonParsingTest
//
//  Created by Goutham Raj N on 28/10/22.
//

import UIKit
 
class ViewController: UIViewController {
    
    
    
    //    let jsonFile =
    //    {
    //        "code" : 0,
    //        "data" :     {
    //            "monitor_id" : 113770000185853013,
    //            "technician_zuid" : ""
    //        },
    //        "message" : "success"
    //    }
    //
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("hey")
        loadJsonWithModel()
        print("bye")
        
    }
    
    func loadJsonWithModel(){
        let jsonData = """
        {
                "code" : 0,
                "data" :     {
                    "monitor_id" : 113770000185853013,
                    "technician_zuid" : ""
                },
                "message" : "success"
            }
    """
        
        if Bundle.main.url(forResource: "JsonData", withExtension: "json") != nil {
            do {
                
                //                    let data = try Data(contentsOf: url)
                //                    let decoder = JSONDecoder()
                //                    let jsonData = try decoder.decode(Model.self, from: data)
                //                    print(jsonData.data.monitor_id)
                let jsonDict = jsonData.data(using: .utf8)!
                let object = try? JSONSerialization.jsonObject(
                    with: jsonDict,
                    options: []
                )
                
                if let dict = object as? NSDictionary{
                    for (i,j) in dict {
                        if i as? String == "data"{
                            if let j = j as? NSDictionary{
                                for (l,k) in j{
                                    if l as? String == "monitor_id"{
                                        print(k)
                                    }
                                }
                                
                            }
                        }
                    }
                    
                }
                
            }
        }
        
    }
    
}
