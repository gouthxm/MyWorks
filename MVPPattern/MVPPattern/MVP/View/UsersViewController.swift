//
//  ViewController.swift
//  MVPPattern
//
//  Created by Goutham Raj N on 23/09/22.
//

import UIKit

class UsersViewController: UIViewController{

    private var users = [User]()
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    private let presenter = UserPresenter()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Users"
        //table view
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        //presenter
        presenter.setViewDelegate(delegate: self)
        presenter.fetchUser()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame  = view.bounds
    }

}

extension UsersViewController:UITableViewDataSource,UITableViewDelegate,UserPresenterDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = users[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        presenter.didTapUser(user: users[indexPath.row])
    }
    func presentUser(user: [User]) {
        self.users = user
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func presentAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel,handler: nil))
        present(alert, animated: true)
    }
     
}
