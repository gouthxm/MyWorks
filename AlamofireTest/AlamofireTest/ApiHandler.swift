//
//  ApiHandler.swift
//  AlamofireTest
//
//  Created by Goutham Raj N on 01/10/22.
//

import Foundation
import Alamofire

class ApiHandler{
    static let sharedInstance = ApiHandler()
    
    func fetchingApiData(handler: @escaping (_ apiData:[Model])->Void){
        let url = "https://jsonplaceholder.typicode.com/posts"
        AF.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response { response in
            switch response.result {
            case .success(let data):
                do{
                    let jsonData = try JSONDecoder().decode([Model].self, from: data!)
                    //json calling
                    handler(jsonData)
                }catch{
                    print(error.localizedDescription)
                }
            case.failure(let error):
                print(error.localizedDescription)
            }
            
        }
    }
}

struct Model: Codable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}

typealias Welcome = [Model]
