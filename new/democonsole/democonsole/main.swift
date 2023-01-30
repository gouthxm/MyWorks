//
//  main.swift
//  democonsole
//
//  Created by Goutham Raj N on 07/04/22.
//

import Foundation


let app = ApplianceList()
let ac = ACList()
let wm = WashingMachineList()
let fridge = FridgeList()


func userLogin(){

    print("please choose your choice")
            print(" 1.Login\n 2.Register\n ")
            print("*****************")

            if let operation = readLine() {
                switch operation {
                case "1":
                    register()
                case "2":
                    register()
                default:
                    print("You entered a wrong key")
                }
            }
    //login

}


ac.acElectricians[0...1]
//APPLIANCES
class ApplianceList{


    func appliances(){

    print("These are the appliances we are servicing")
    print(" 1.A/C\n 2.Washing Machine\n 3.Fridge\n")
    print("********************************************************")
    if let operation = readLine() {

        switch operation {
        case "1":
            var airc=["AirConditionor"]
            ac.getACList()
        case "2":
            wm.getWashingList()
        case "3":
            fridge.getFridgeList()

        default:
            print("You entered a wrong key,Please choose the correct option")
            print("********************************************************")
            appliances()
        }
    }

}
}



//confirm function
func chooseServiceType(){
print(" ********************************************************\n press 1 for choose the service\n press 2 to for get back to service list \n ********************************************************")
    if let operation = readLine() {
        switch operation {
        case "1":
            confirmType()
        case "2":
            app.appliances()
        default:
            print("You entered a wrong key")
            chooseServiceType()
        }
    }
}
func confirmType(){
    print("********************************************************")
    print(details[0].address)
    print("----------------------------------------------------")
    print(" 1.ASAP\n 2.SCHEDULE\n 3.Confirm")
    if let operation = readLine() {

        switch operation {
        case "1":
            asap()
        case "2":
            schedule()
        case "3":
            confirmingService()
        default:
            print("You entered a wrong key,Please choose the correct option")
            print("********************************************************")
            confirmType()
        }
    }
}
//code for asap
func asap(){
}
//code for schedule
func schedule(){
}

func confirmingService(){
    print("service name")
    print(details[0].address)
    print(ac.acElectricians[0].name)
    print("price")
    print("----------------------------------------------------")
    print(" 1.Confirm\n 2.Cancel")
    if let operation = readLine(){
        switch operation{
        case "1":
            serviceConfirmed()
        case "2":
            cancelService()
        default:
        print("You entered a wrong key,Please choose the correct option")
        confirmingService()
        }
    }
}

//Running

register()
app.appliances()

//Database()

//run userLogin to run the code
//userLogin()
func serviceConfirmed(){
    print("your service has been confirmed")
    print("thankyou for using our app")
}

func cancelService(){
    app.appliances()
}



