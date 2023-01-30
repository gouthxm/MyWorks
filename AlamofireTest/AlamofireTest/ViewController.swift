//
//  ViewController.swift
//  AlamofireTest
//
//  Created by Goutham Raj N on 01/10/22.
//

import UIKit
import Alamofire



class ViewController: UIViewController {
    
    var apiResult = [Model]()

    @IBOutlet weak var apiDataTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ApiHandler.sharedInstance.fetchingApiData { apiData in
            self.apiResult = apiData
        
            DispatchQueue.main.async {
                self.apiDataTableView.reloadData()
            }
            
        }
    }


}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell")else{return UITableViewCell()}
        cell.textLabel?.text = apiResult[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apiResult.count
        
    }
    

}
