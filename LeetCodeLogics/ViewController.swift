//
//  ViewController.swift
//  LeetCodeLogics
//
//  Created by Padmaja Pathada on 3/20/23.
//

import UIKit

class ViewController: UIViewController {

    var evenList = [Int]()
    var oddList = [Int]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.evenOdd(arrList:[4,3,5,78,45,23,6,-9,12,25,46,76,77])
        self.ascendingOrder(arr:[4,3,5,78,45,23,6,-9,12,25,46,76,77])
        self.targetIndex(nums: [2,7,11,24,15], target: 26)
        self.paranthesis(s: "{}[]{]")
        let singleNum = findSingleNumber([4,2,2,4,1,1,8,8,2,0])
        print("findSingleNumber: \(singleNum)")
    }

    func evenOdd(arrList:[Int]){
        for i in 0..<arrList.count{
            if ((arrList[i])%2) == 0{
                print("even number: \(arrList[i])")
                evenList.append(arrList[i])
            }else{
                print("odd number: \(arrList[i])")
                oddList.append(arrList[i])
            }
        }
        print("Even List: \(evenList), odd List: \(oddList)")
    }
    
    func ascendingOrder(arr:[Int]){
        var temp = Int()
        var arrList = arr
        for i in 0..<arrList.count{
            for j in (i+1)..<arrList.count{
                if arrList[i] > arrList[j] {
                     temp = arrList[i]
                    arrList[i] = arrList[j]
                    arrList[j] = temp
                    print(arrList)
                }
            }
        }
    }
    
    
    func targetIndex(nums:[Int], target:Int){
        var outputOcurred = 0
        for i in 0..<nums.count{
            for j in (i+1)..<nums.count{
                if nums[i]+nums[j] == target{
                    print("Output indexes are: \(i), \(j)")
                    print("Output Numbers are: \(nums[i]), \(nums[j])")
                    outputOcurred = 1
                }
            }
        }
        if outputOcurred == 0{
            print("target is not in the list")
        }
    }
    
    func paranthesis(s:String){
        let a = "()"
        let b = "{}"
        let c = "[]"
        let paranth = Array(s)
        for i in 0..<paranth.count{
            if i%2==0{
                if i+1 < paranth.count{
                    let d = "\(paranth[i])"+"\(paranth[i+1])"
                    print(d)
                    if d == a || d == b || d == c{
                        print("True")
                       // return
                    }else{
                        print("False")
                        return
                    }
                }
            }
        }
    }
    
    
    func findSingleNumber(_ nums: [Int]) -> [Int] {
        var uniqueNumbers = [Int]()
        
        for i in 0..<nums.count {
            var foundDuplicate = false
            for j in 0..<nums.count {
                if i != j && nums[i] == nums[j] {
                    foundDuplicate = true
                    break
                }
            }
            if !foundDuplicate {
                uniqueNumbers.append(nums[i])
            }
        }
        print(uniqueNumbers)
        return uniqueNumbers
    }
    
    func findPivot() {
        print("pivot")
    }
}

