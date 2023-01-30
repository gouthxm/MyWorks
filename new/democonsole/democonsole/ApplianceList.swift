//
//  ACRepair.swift
//  democonsole
//
//  Created by Goutham Raj N on 15/04/22.
//

import Foundation
let acService = ACServiceList()
let washingService = WashingServiceList()
let fridgeService = FridgeServiceList()

class ACList{
    var airc=["AirConditionor"]
    let acElectricians : [Electrician] = [nivin,ram]
    
    func getACList(){
        print("*****************")
        print("A/C Service List")
        print(" 1.Repair\n 2.Installing\n 3.uninstalling\n 4.Installing and Uninstallaing\n 5.Routine Service \n 6.Back")
        print("********************************************************")
        if let operation = readLine() {
            switch operation {
            case "1":
                acService.acRepair()
            case "2":
                acService.acInstalling()
            case "3":
                acService.acUninstalling()
            case "4":
                acService.acInstallUninstall()
            case "5":
                acService.acRoutine()
            case "6":
                print("*****************")
                app.appliances()
                
            default:
                print("You entered a wrong key,Please choose the correct option")
                print("********************************************************")
                getACList()
            }
        }


    }

}



class WashingMachineList{
    
func getWashingList(){
    let washingElectricians : [Electrician] = [sundar]

    print("*****************")
    print("Washing Machine Service List")
    print(" 1.Repair\n 2.Top Load Service\n 3.Front Load Service\n 4. Full Service \n 5.Routine Service \n 6.Back")
    print("********************************************************")
    if let operation = readLine() {
        switch operation {
        case "1":
            washingService.washingRepair()
        case "2":
            washingService.topLoad()
        case "3":
            washingService.frontLoad()
        case "4":
            washingService.fullService()
        case "5":
            washingService.washingRoutine()
        case "6":
            print("******************************")
            app.appliances()
        default:
            print("You entered a wrong key,Please choose the correct option")
            print("********************************************************")
            getWashingList()
        }

    }

}


}


class FridgeList{
    func getFridgeList(){
        let fridgeElectricians : [Electrician] = [raju]

        print("*****************")
        print("Fridge Service List")
        print(" 1.Repair\n 2.Installing\n 3.uninstalling\n 4.Gas Filling\n 5.Routine Service \n 6.Back")
        print("********************************************************")
        if let operation = readLine() {
            switch operation {
            case "1":
                fridgeService.fridgeRepair()
            case "2":
                fridgeService.fridgeInstalling()
            case "3":
                fridgeService.fridgeUninstalling()
            case "4":
                fridgeService.gasFilling()
            case "5":
                fridgeService.fridgeRoutine()
            case "6":
                print("********************")
                app.appliances()
            default:
                print("*****************")
                print("You entered a wrong key,Please choose the correct option")
                print("********************************************************")
                getFridgeList()
            }

        }


    }


}

