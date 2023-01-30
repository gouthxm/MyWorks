import UIKit

//var greeting = "Hello, playground"
//
//func printTuple(){
//    let multipleThings = (name:"thing",num:1000,string:"aasd")
//    multipleThings.num
//    multipleThings.string
//}
//printTuple()
//
//
//
//func name<T>(a:T,b:T){
//    print(a,b)
//}
//
//name(a: 2, b: 3)
//name(a: "goutham", b: "hanselin")
//func details(a:String,b:String){
//    print(a,b)
//}

//class Solution {
//    func permuteUnique(_ nums: [Int]) -> [[Int]] {
//
//        var res = [[Int]](), path = [Int](), visited = [Bool](repeating: false, count: nums.count)
//
//        dfs(&res, &path, nums.sorted(by: <), &visited)
//
//        return res
//    }

//    private func dfs(_ res: inout [[Int]], _ path: inout [Int], _ nums: [Int], _ visited: inout [Bool]) {
//        guard path.count != nums.count else { res.append(path); return }
//        for n in 0..<nums.count {
//            if visited[n] || (n > 0 && nums[n] == nums[n-1] && visited[n-1]) { continue }
//            path.append(nums[n])
//            visited[n] = true
//            dfs(&res, &path, nums, &visited)
//            visited[n] = false
//            path.removeLast()
//        }
//    }
//}
//permuteUnique([1,2,3])

//var namee: String = "kaleesh"
//
//
//func summa(name: inout String) {
//
//
//    name = "kalai"
//
//}
//
//summa(name: &namee)
//
//print(namee)




//extension Array {
//    var combinationsWithoutRepetition: [[Element]] {
//        guard !isEmpty else { return [[]] }
//        return Array(self[1...]).combinationsWithoutRepetition.flatMap { [$0, [self[0]] + $0] }
//    }
//}
//
//print([1,2,3,4].combinationsWithoutRepetition)



//let num = [1,8,3]
//let num2 = [5,6,3]
//var val = 0
//var val2 = 0
//
//for i in 0..<num.count{
//    if num[i]<num2[i]{
//        val+=1
//    }
//    else if num[i]>num2[i]{
//        val2+=1
//    }
//    else if num[i]==num2[i]{
//        continue
//    }
//    else{
//        print("so")
//    }
//}
//print(val,val2)


//var n = 5
//var prev = 1
//for i in 1...n{
//    var temp = i
//
//    for j in 1...i{
//
//        print(temp)
//        temp = temp + (n - prev)
//        prev -= 1
//    }
//    prev = i
//}

var n = 28

//var n = 5

//for i in 0...n-1{
//    var val = i + 1
//    var dec = n - 1
//    var gapVal = n - i
//    for j in 0...gapVal{
//        print("  ",terminator: " ")
//    }
////    var initNum = val
////    var decem = dec
//    for k in 1...(val){
//        print(val,terminator: " ")
//        val += dec
//        val -= 1
//    }
//    print("")
//}
//
//var n = 5
for i in 0...n-1{
    var val = i + 1
    var dec = n - 1
    var gapVal = n - i
    for _ in 0...gapVal{
        print("  ",terminator: " ")
    }

    for _ in 1...(val){
        
       print("\(val)",terminator: " ")
        val += dec
        dec -= 1
    }
    print("")
}
