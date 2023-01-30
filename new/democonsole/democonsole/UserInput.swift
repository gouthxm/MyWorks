//
//  UserInput.swift
//  democonsole
//
//  Created by Goutham Raj N on 19/04/22.
//

import Foundation

class UserInput {
    
    func getName() -> String {
        print("*****************")
        print("Enter name")
        if let name = readLine() {
            return name
        }
        else {
            return ""
        }
    }
    
    func getMobileNumber() -> Int {
        var operation = true
        print("Enter mobile number")
        while operation {
            if let mobileNumber = readLine() {
                if mobileNumber.count == 10 {
                    if let mobileNumber = Int(mobileNumber) {
                        operation = false
                        return mobileNumber
                    }
                }
                else {
                    print("Please enter valid mobile number")
                    operation = true
                }
            }
        }
        return 0
    }
    
    func getAddress() -> String {
        print("Enter your address")
        if let address = readLine() {
            return address
        }
        return ""
    }

    
    

}




