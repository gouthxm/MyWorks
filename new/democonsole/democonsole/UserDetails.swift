//
//  Login.swift
//  democonsole
//
//  Created by Goutham Raj N on 19/04/22.
//
import Foundation

//electrician details
var electricianName : [String] = ["name1", "name2", "name3", "name4"]
let randomElectricians = electricianName.randomElement()!


let userInput = UserInput()
var details : [(userName :String,mobileNumber: Int, address: String)] = []


func register()  {
    let name = userInput.getName()
    let mobileNumber = userInput.getMobileNumber()
    let address = userInput.getAddress()




    var tempDetail = (userName : name, mobileNumber : mobileNumber, address:address)




    details.append(tempDetail)
    print("********************************************************")
    print("if you already have an account please choose login")
    //userLogin()
}

//func login() {
//    let userName = userInput.getName()
//    let userPassword = userInput.getPassword()
//
//    let ball = "goutham"
//    let pass = "all123"
//
//    if userName == ball {
//        if userPassword == pass {
//            print("********************************************************")
//            app.appliances()
//        }
//        else{
//            print("wrong password")
//            print("*****************")
//        }
//        return
//    }
//    else{
//        print("wrong username")
//        if userPassword != pass{
//            print("wrong Password")
//            print("*****************")
//        }
//    }
//}


class Electrician{
    var name:String
    
    enum Status{
        case available, busy, away
    }
    
    var status:Status
    var phoneNumber:Int
    enum Speciality{
        case ac, fridge, washingMachine
    }
    
    
    var speciality : Speciality
    
    
    
    init(name:String,status:Status,phoneNumber:Int,speciality:Speciality){
        self.name = name
        self.status = status
        self.phoneNumber = phoneNumber
        self.speciality = speciality
    }
    
}
let nivin = Electrician(name: "Nivin Kumar", status: .available, phoneNumber: 9876543210, speciality: .ac )
//var electricName : [String] = ["Nivin kumar.name","name2","name3","name4"]
let raju = Electrician(name: "Raju", status: .available, phoneNumber: 9876443210, speciality: .fridge)

let sundar = Electrician(name: "Sundar", status: .available, phoneNumber: 9996543210, speciality: .washingMachine)

let ram = Electrician(name: "Ram Kumar", status: .busy, phoneNumber: 9872243210, speciality: .ac)

