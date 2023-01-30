//
//  Filedummy.swift
//  democonsole
//
//  Created by Goutham Raj N on 13/04/22.
//

import Foundation

//{
//                if let numberOfContacts = Int(numberString) {
//                    for _ in 0..<numberOfContacts {
//                        add()
    
//                    }
//                }
//    func add(){
//        print("hello")
//    }
//        }


// for just printing

//let goli = print("\n Enter the  count for create contact")
////        if let numberString =
//let joli = readLine()
//
//let holi = print("\n Enter the  count for create contact")
//let mali = readLine()
//
//print(joli,mali)

//modified start for repeating the  calling

//func start() {
//
//    var isContinue : Bool = true
//    var perform: Bool = true
//    while perform {
//        if let numberString = readLine() {
//
//
//                repeat {
//                    print("Do you want any other task (Y/N):")
//                    if let isCont = readLine() {
//                        if isCont == "Y" || isCont == "y" {
//                            print(" 1.Add\n 2.Delete\n 3.Update\n 4.Contact List")
//                            if let operation = readLine() {
//                                switch operation {
//                                case "1":
//                                    appliances()
//                                case "2":
//                                    appliances()
//                                case "3":
//                                    appliances()
//                                case "4":
//                                    appliances()
//                                default:
//                                    print("You entered wrong key")
//                                }
//                            }
//                            else {
//                                isContinue = false
//                            }
//                        }
//                        else if isCont == "N" || isCont == "n" {
//                            isContinue = false
//                        }
//                        else {
//                            print("you entered is invalid")
//                        }
//                    }
//                } while isContinue
//                perform = false
//
//
//        }
//    }
//}
//start()





//old Database

//func openDatabase() -> OpaquePointer? {
//  var db: OpaquePointer?
//    let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("mydatabsep.sqlite")
//
////    guard let part1DbPath =  fileURL.path else {
////    print("part1DbPath is nil.")
////    return nil
////  }
//    if sqlite3_open(fileURL.path, &db) == SQLITE_OK {
//        print("Successfully opened connection to database at \(fileURL.path)")
//    return db
//  } else {
//    print("Unable to open database.")
//      return db
//  }
//}


////func createDB() -> OpaquePointer? {
//    let filePath = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathExtension(path)
//
//    var db : OpaquePointer? = nil
//
//    if sqlite3_open(filePath.path, &db) != SQLITE_OK {
//        print("There is error in creating DB")
//        return nil
//    }else {
//        print("Database has been created with path \(path)")
//        return db
//    }
//}

