//
//  ApplianceServices.swift
//  democonsole
//
//  Created by Goutham Raj N on 02/05/22.
//

import Foundation

class ACServiceList{
    //AC SERVICE LIST

    func acRepair(){
        print("********************************************************")
        print("AC Repair(Window/Split)")
        print("--------------------------------------------------------")
        
        print("Description")
        print("--------------------------------------------------------")
        print("*Accurate diagnosis & same day resolution after detailed inspection \n*Visit charges of $299 will be adjusted in the final bill")
        print("--------------------------------------------------------")
        print("$299 \n45 min")
        print("--------------------------------------------------------")
        print(randomElectricians)
        //testing
        
        chooseServiceType()
    }

    func acInstalling(){
        print("********************************************************")
        print("Installation(Window/Split)")
        print("--------------------------------------------------------")
        print("Description")
        print("--------------------------------------------------------")
        print("*Inspection of the AC, measurements of the respective wall followed by accuracy \n*Drilling wiring connections,installation of unit(s),pipe fixes")
        print("--------------------------------------------------------")
        print("$799 \n1 hr 30 min")
        print("--------------------------------------------------------")
        print(randomElectricians)
        chooseServiceType()
    }
    func acUninstalling(){
        print("********************************************************")
        print("Uninstallation(Window/Split)")
        print("--------------------------------------------------------")
        print("Description")
        print("--------------------------------------------------------")
        print("*Detailed inspection of the AC for any kind of repairs,if needed \n*Closure of the pressure valves followed by proper storage of gas")
        print("--------------------------------------------------------")
        print("$399 \n60 min")
        print("--------------------------------------------------------")
        print(randomElectricians)
        chooseServiceType()
    }
    func acInstallUninstall(){
        print("********************************************************")
        print("Intallation and Uninstallation(Window/Split)")
        print("--------------------------------------------------------")
        print("Description")
        print("--------------------------------------------------------")
        print("*Inspection of the AC, measurements of the respective wall followed by accuracy \n*Closure of the pressure valves followed by proper storage of gas")
        print("--------------------------------------------------------")
        print("$1000 \n2 hr")
        print("--------------------------------------------------------")
        print(randomElectricians)
        chooseServiceType()
    }
    func acRoutine(){
        print("********************************************************")
        print("AC Routine Service(Window/Split)")
        print("--------------------------------------------------------")
        print("description")
        print("--------------------------------------------------------")
        print("*Accurate diagnosis & same day resolution after detailed inspection \n*Visit charges of $299 will be adjusted in the final bill")
        print("--------------------------------------------------------")
        print("$299\n45 min")
        print("--------------------------------------------------------")
        print(randomElectricians)
        chooseServiceType()
    }
}

class WashingServiceList{
    //WASHINGMACHINE SERVICE LIST

    func washingRepair(){
        print("********************************************************")
        print("Full Repair(Top/Bottom)")
        print("--------------------------------------------------------")
        print("Description")
        print("--------------------------------------------------------")
        print("*Price includes visits & diagnosis \n*Spare part rates applicable over per rate card")
        print("--------------------------------------------------------")
        print("$160 \n60 min")
        print("--------------------------------------------------------")
        print(randomElectricians)
        chooseServiceType()
    }
    func topLoad(){
        print("********************************************************")
        print("Top Load Repair")
        print("--------------------------------------------------------")
        print("Description")
        print("--------------------------------------------------------")
        print("*Price includes visits & diagnosis \n*Spare part rates applicable over per rate card")
        print("--------------------------------------------------------")
        print("$160 \n60 min")
        print("--------------------------------------------------------")
        print(randomElectricians)
        chooseServiceType()
    }
    func frontLoad(){
        print("********************************************************")
        print("Front Load Repair")
        print("--------------------------------------------------------")
        print("Description")
        print("--------------------------------------------------------")
        print("*Price includes visits & diagnosis \n*Spare part rates applicable over per rate card")
        print("--------------------------------------------------------")
        print("$160 \n60 min")
        print("--------------------------------------------------------")

        print(randomElectricians)
        chooseServiceType()
    }
    func fullService(){
        print("********************************************************")
        print("Full Service(Top/Bottom)")
        print("--------------------------------------------------------")
        print("Description")
        print("--------------------------------------------------------")
        print("*Price includes visits & diagnosis \n*Spare part rates applicable over per rate card")
        print("--------------------------------------------------------")
        print("$359 \n1hr 20min")
        print("--------------------------------------------------------")
        print(randomElectricians)
        chooseServiceType()
    }
    func washingRoutine(){
        print("********************************************************")
        print("Routine Service(Top/Bottom)")
        print("--------------------------------------------------------")
        print("Description")
        print("--------------------------------------------------------")
        print("*Price includes visits & diagnosis \n*Spare part rates applicable over per rate card")
        print("--------------------------------------------------------")
        print("$200 \n60 min")
        print("--------------------------------------------------------")
        print(randomElectricians)
        chooseServiceType()
    }
}

class FridgeServiceList{
    //FRIDGE SERVICE LIST


    func fridgeRepair(){
        print("********************************************************")
        print("Full Repair(Single/Double)")
        print("--------------------------------------------------------")
        print("description")
        print("--------------------------------------------------------")
        print(" *Price includes visit & Diagnosis \nSpare part rates applicable as per rate card")
        print("________________________________________________________")
        print("$160 \n60 min")
        print(randomElectricians)
        chooseServiceType()
    }
    func fridgeInstalling(){
        print("********************************************************")
        print("Installation(Single/Double)")
        print("________________________________________________________")
        print("Description")
        print("________________________________________________________")
        print(" *Price includes visit & Diagnosis \nSpare part rates applicable as per rate card")
        print("________________________________________________________")
        print("$260 \n60 min")
        print("--------------------------------------------------------")
        print(randomElectricians)
        chooseServiceType()
    }
    func fridgeUninstalling(){
        print("********************************************************")
        print("Uninstallation(Single/Double)")
        print("--------------------------------------------------------")
        print("Description")
        print("--------------------------------------------------------")
        print(" *Price includes visit & Diagnosis \nSpare part rates applicable as per rate card")
        print("--------------------------------------------------------")
        print("$190 \n60 min")
        print("--------------------------------------------------------")
        print(randomElectricians)
        chooseServiceType()
    }
    func gasFilling(){
        print("********************************************************")
        print("Gas Filling(Single/Double)")
        print("--------------------------------------------------------")
        print("Description")
        print("--------------------------------------------------------")
        print(" *Price includes visit & Diagnosis \nSpare part rates applicable as per rate card")
        print("--------------------------------------------------------")
        print("$160 \n60 min")
        print("--------------------------------------------------------")

        chooseServiceType()
    }
    func fridgeRoutine(){
        print("********************************************************")
        print("Routine Service(Single/Double)")
        print("--------------------------------------------------------")
        print("Description")
        print("--------------------------------------------------------")
        print(" *Price includes visit & Diagnosis \nSpare part rates applicable as per rate card")
        print("--------------------------------------------------------")
        print("$160 \n60 min")
        print("--------------------------------------------------------")
        print(randomElectricians)
        chooseServiceType()
    }
}
