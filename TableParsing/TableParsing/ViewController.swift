//
//  ViewController.swift
//  TableParsing
//
//  Created by Goutham Raj N on 10/11/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var contactTableView: UITableView!
    var data :  [Any]?
    override func viewDidLoad() {
        super.viewDidLoad()
        contactTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
        loadJsonWithModel()
    }
    
    
    func loadJsonWithModel(){
        let jsonData = """
{
   "data":{
      "message":"Success",
      "people":[
         {
            "id":"1",
            "designation":"iOS Developer",
            "name":"John Doe"
         },
         {
            "id":"2",
            "designation":"Android Developer",
            "name":"Derry Logan"
         },
         {
            "id":"3",
            "designation":"Quality Analyst",
            "name":"Sean Paul"
         },
         {
            "id":"4",
            "designation":"Content Writer",
            "name":"John Drake"
         }
      ],
      "relationships":{
         "author":{
            "data":{
               "id":"42",
               "type":"people"
            }
         }
      }
   }
}
"""
        
            do {

                let jsonDict = jsonData.data(using: .utf8)!
                let object = try JSONSerialization.jsonObject(
                    with: jsonDict,
                    options: []
                )
                
                if let dict = object as? NSDictionary{
                    for (i,j) in dict {
                        if i as? String == "data"{
                            if let j = j as? NSDictionary{
                                for (l,k) in j{
                                    if l as? String == "people"{
                                        data = k as? [Any]
                                    }
                                }
                                
                            }
                        }
                    }
                    
                }
                
            
            } catch {
                print(error)
            }
        DispatchQueue.main.async {
            self.contactTableView.reloadData()
        }
    }
    
    
}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let data = data {
            return data.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "cell")
        guard let data = data else{
            return cell
        }
        var dataDict = data[indexPath.row]
        print(dataDict)
        for (l,k) in dataDict as! NSDictionary{
            if l as? String == "designation"{
                print("Designation")
                print(k)
                cell.detailTextLabel?.text = k as? String
            }
            if l as? String == "name"{
                print("name")
                cell.textLabel?.text = k as? String
            }
        }
        
        return cell
    }
    
    
}
