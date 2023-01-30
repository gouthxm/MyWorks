//
//  presenter.swift
//  MVPPattern
//
//  Created by Goutham Raj N on 23/09/22.
//

import Foundation
import UIKit

protocol UserPresenterDelegate{
    func presentUser(user:[User])
    func presentAlert(title:String,message:String)
}
typealias PresenterDelegate = UserPresenterDelegate & UIViewController

class UserPresenter{
    weak var delgate: PresenterDelegate?
    //basic api call
    public func fetchUser(){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users")else{return}
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let users = try JSONDecoder().decode([User].self, from: data)
                self?.delgate?.presentUser(user: users )
            }
            catch{
                print(error)
            }
        }
        task.resume()
    }
    
    public func setViewDelegate(delegate: PresenterDelegate){
        self.delgate = delegate
    }
    public func didTapUser(user: User){
        delgate?.presentAlert(title: user.name, message: "\(user.name)'s email is \(user.email) and their username is \(user.username)")
    }
}
