//  TabController.swift
//  UiApplication
//
//  Created by Goutham Raj N on 10/08/22.
//

import UIKit

class TabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let first = ViewController()
        let new = OneView()
        let second = SecocondView()
        
        first.title = "first"
        new.title = "second"
        second.title = "third"
        
        self.setViewControllers([first,new,second], animated: true)
        
        guard let items = self.tabBar.items else{
            return
        }
        
        let image = ["slowmo","car.2","gear"]
                
        let num = image.count
        for i in 0..<num{
            items[i].image = UIImage(systemName:image[i])
        }
        self.tabBar.tintColor = .systemBlue
        self.tabBar.backgroundColor = .white
    }
    


}

class OneView:UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemCyan
        constr()
    }
    func constr(){
        
//        view.addSubview(activity)
        
//        activity.topAnchor.constraint(equalTo: view.topAnchor,constant: 60).isActive = true

    }
    
}

struct SaveImg{
    let saveImge = ["gear","gear","gear","gear","gear","gear"]
}
struct SaveText{
    let saveText = ["Want to go","Travel plans","labelled","TODO","Starred places"]
}



class SecocondView: UIViewController {
    
    let saveImg = SaveImg()
    let saveTxt = SaveText()
    var data = [ToDo]()
    
    
//    let data = vc.resultData
    
    
     let savedTitle : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
     let topView : UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    

    
    var tableView : UITableView = {
        let tv = UITableView(frame: .zero, style: .grouped)
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()
    
    var activity : UIActivityIndicatorView = {
        let activity = UIActivityIndicatorView(style: .large)
        activity.translatesAutoresizingMaskIntoConstraints = false
        activity .startAnimating()
        return activity
    }()

    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpView()
        tableView.delegate = self
        self.navigationController?.navigationBar.barTintColor = UIColor.red
        //view.backgroundColor = .lightGray
        tableView.dataSource = self
        tableView.register(SavedTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = .white
        // Do any additional setup after loading the view.

        fetchingApiData(URL: "https://jsonplaceholder.typicode.com/todos", completion: { result in
            self.data = result
            
            DispatchQueue.main.async {
                self.activity.stopAnimating()
                self.tableView.reloadData()
            }
        }, errorCal: { error in
            //error handling
        }
        
        
        )
    }

     func setUpView(){
//         navigationItem.title = "Saved"
//         activityInidicator()

        view.addSubview(topView)
         tableView.addSubview(activity)
        view.addSubview(tableView)
        view.addSubview(savedTitle)

        savedTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        savedTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: -15).isActive = true
        savedTitle.heightAnchor.constraint(equalToConstant: 30).isActive = true
        savedTitle.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        topView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        topView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5).isActive = true
        
        tableView.leadingAnchor.constraint(equalTo: topView.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: topView.trailingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: topView.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
         
        activity.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        activity.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        activity.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    
    //fetching data
    func fetchingApiData(URL url:String,completion:  @escaping ([ToDo]) -> Void , errorCal: @escaping (Error) -> Void ){
        
        let url = URL(string:url)
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url!) { data, response, error in
            if data != nil && error == nil{
                do{
                    let parsingData = try JSONDecoder().decode([ToDo].self, from: data!)
                    completion(parsingData)
                }
                catch {
                    errorCal(NSError(domain: "Parsing error", code: -101, userInfo: nil))
                }
            }
            else if error != nil {
                errorCal(error!)
            }
            else{
                errorCal(NSError(domain: "Error occured", code: -102, userInfo: nil))
            }
        }
        dataTask.resume()
        
    }
    
    
    func activityInidicator(){
        let container = UIView()
        container.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.center = self.view.center
        
        container .addSubview(activityIndicator)
        view.addSubview(container)

        
        activityIndicator .startAnimating()
     

    }
    

}

extension SecocondView : UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate{
    
//    tableView.register(SavedTableViewCell.self, forCellReuseIdentifier: "Cell")
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! SavedTableViewCell
        //cell?.backgroundColor = .blue
//        cell?.imageview.image = UIImage(named: saveImg.saveImge[indexPath.row])
//        cell?.optLabel.text = saveTxt.saveText[indexPath.row]

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.
        let  detailVc = OneView()
//        print("i am alive")
//        tabBarController?.dismiss(animated: true)
//        tabBarController?.present(detailVc, animated: true)
        navigationController?.pushViewController(detailVc, animated: true)
//        tabBarController?.moreNavigationController.pushViewController(detailVc, animated: true)
            
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 50))
            
//            let label = UILabel()
//            label.frame = CGRect.init(x: 20, y: 5, width: headerView.frame.width-10, height: headerView.frame.height-10)
//            label.text = "Your Lists"
//            label.font = .boldSystemFont(ofSize: 20)
//
//            headerView.addSubview(label)
        
        
        let button : UIButton = {
           let bt = UIButton()
            bt.translatesAutoresizingMaskIntoConstraints = false
            bt.setImage(UIImage(systemName: "plus"), for: .normal)
    //        bt.frame.size = CGSize(width: 20, height: 20)
            bt.tintColor = .link
            bt.setTitle("New List", for: .normal)
            bt.titleLabel?.font = .systemFont(ofSize: 13)
            bt.setTitleColor(.link, for: .normal)
            bt.addTarget(self, action: #selector(alerter), for: .touchUpInside)
            return bt
        }()
        
        let searchList: UISearchBar = {
            let searchList = UISearchBar()
            searchList.translatesAutoresizingMaskIntoConstraints = false
            searchList.delegate = self
            return searchList
        }()
        
        headerView.addSubview(button)
        headerView.addSubview(searchList)
        headerView.backgroundColor = .white
        
        button.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -10).isActive = true
        button.centerYAnchor.constraint(equalTo: headerView.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 80).isActive = true
        button.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        searchList.trailingAnchor.constraint(equalTo: button.leadingAnchor).isActive = true
        searchList.leadingAnchor.constraint(equalTo: headerView.leadingAnchor).isActive = true
        searchList.topAnchor.constraint(equalTo: headerView.topAnchor,constant: -5).isActive = true

            return headerView
    }
    

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String, cellForRowAt indexPath:IndexPath) {
        if searchText == ""{
            data[indexPath.row].title
        }
        else{
            if searchBar.selectedScopeButtonIndex == 0 {
                data = data.filter({ (title) -> Bool in
                    return title.title.lowercased().contains(searchText.lowercased())
                })
            }
            else{
                data = data.filter({ (title) -> Bool in
                    return title.title.lowercased().contains(searchText.lowercased())
                })
            }
        }
    }
    
    
    
    @objc func alerter(){
        let dialogMessage = UIAlertController(title: "Attention", message: "I am an alert message you cannot dissmiss.", preferredStyle: .alert)
        dialogMessage.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))
        self.present(dialogMessage, animated: true, completion: nil)
        
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 50
    }
}


