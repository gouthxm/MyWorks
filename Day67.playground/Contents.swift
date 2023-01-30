import UIKit

protocol HaveLegs {
    var noOfLegs: Int { get set }
}

class Animal{
    var name: String
    var family: String
    init(name:String,family:String) {
        self.name = name
        self.family = family
    }
}

class Dog: Animal,HaveLegs{
    var noOfLegs: Int
    
    init(name: String,noOfLegs: Int) {
         self.noOfLegs = noOfLegs
         super.init(name: name, family: "Dog")
    }
              
}

let dog = Dog(name: "Kuku", noOfLegs: 4)
print(dog.name,dog.family,dog.noOfLegs)



let breed = {(dogName:String,dogAge: Int) -> (String) in
    
    let detail = "My dog's name is \(dogName) and he is \(dogAge) years old"
    return detail
}

breed("kuku",3)

let catName: String?
catName = "persian"
let checkingDetail = catName?.count


func sum<T>(num:T){
    print("\(num) \(num)")
    
}
sum(num: 20)


var nameArr = [1,2,3,4]
nameArr.append(5)
print(nameArr)
nameArr.insert(7, at: 3)
print(nameArr)
nameArr.remove(at: 4)
nameArr.popLast()
var arr2 = [6,2,4]

nameArr.append(contentsOf: arr2)
print(nameArr)


var nameDict : [Int:String] = [1:"goutham",2:"siva",3:"unni"]

nameDict[5] = "adi"
nameDict[2] = "newName"
print(nameDict)
nameDict.removeValue(forKey: 2)


var nameSet: Set<Int> = [1,2,3,4]



//serial queue example
func welcome(){
    print("hello")
}
func bye(){
    print("bye")
}

let queue = DispatchQueue(label: "Serial queue")

queue.async {
    for _ in 1...5{
        welcome()
    }
}
queue.async {
    for _ in 1...5{
        bye()
    }
}

//concurrent
let concurrentQueue = DispatchQueue(label: "Concurrent",qos: .default,attributes: .concurrent)
concurrentQueue.async {
    for _ in 1...5{
        welcome()
    }
}
concurrentQueue.async {
    for _ in 1...5{
        bye()
    }
}

let a = 10
var value: Int {
    return 10 + a
}
value
