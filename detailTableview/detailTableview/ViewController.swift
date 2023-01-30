//
//  ViewController.swift
//  detailTableview
//
//  Created by Goutham Raj N on 17/08/22.
//

import UIKit

struct SaveData{
    let saveImge = ["afganistan","argentina","bangladesh","bhutan","brazil","china","croatia","german","india","ireland","japan","kuwait","mexico","nepal","portugal"]
    let saveText = ["Afganistan","Argentina","Bangladesh","Bhutan","Brazil","China","Croatia","Germany","India","Ireland","Japan","Kuwait","Mexico","Nepal","Portugal"]

}


class ViewController: UIViewController {
    
    var tableView : UITableView = {
        let tv = UITableView(frame: .zero, style: .grouped)
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    let data = SaveData()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Countries"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = .white
        // Do any additional setup after loading the view.
        constraints()
        
        
    }
    
    func constraints(){
        view.addSubview(tableView)
        tableView.leadingAnchor.constraint(equalTo:  view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    


}


extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableViewCell
        cell?.optLabel.text = data.saveText[indexPath.row]
        cell?.imageview.image = UIImage(named: data.saveImge[indexPath.row])
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc =  pageViewController()
        vc.title = " \(data.saveText[indexPath.row])"
        vc.contentImg.image = UIImage(named: data.saveImge[indexPath.row])
        vc.pageLabel.text = " \(indexPath.row + 1)/\(data.saveText.count)"
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
    
}

extension ViewController : UITableViewDelegate{
    
}

