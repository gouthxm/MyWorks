//
//  Model.swift
//  UiApplication
//
//  Created by Goutham Raj N on 16/08/22.
//

import Foundation

struct ToDo:Decodable{
    let userId : Int
    let id : Int
    let title : String
    let completed : Bool
}
