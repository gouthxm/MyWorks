//
//  UserInput.swift
//  democonsole
//
//  Created by Goutham Raj N on 19/04/22.
//

import Foundation

class UserTable: CustomStringConvertible {
    var id: Int
    var name: String
    var mobilenumber: Int?
    var address: String?
    
    init(id: Int, name: String, mobilenumber: Int?, address: String?) {
        self.id = id
        self.name = name
        self.address = address
        self.mobilenumber = mobilenumber
    }
    
    var description: String {
        return "\n ID :\(id)\n Name: \(name)\n Mob No: \(mobilenumber ?? 0)\n Address: \(address ?? "")\n"
    }
    
}
