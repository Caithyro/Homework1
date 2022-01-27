//
//  ViewController.swift
//  Homework1
//
//  Created by Дмитрий Куприенко on 21.11.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var numbers1 = [2, -4, -9, 5, -2, 7, 3, 65]
        var numbers2 = [2, -4, -9, 5, -2, 7, 3, 65]
        var stringArray = ["Hello,", "Alabama!", "How", "are", "you", "today", "?"]
        var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]
        
        func taskOne(){
            var position = 0
            for eachNumber in numbers1 {
                if eachNumber < 0{
                    numbers1.remove(at:position)
                    numbers1.insert(0, at: position)
                    position += 1
                } else {
                    position += 1
                }
            }
        }
        taskOne()
        print("Task 1:", numbers1)
        
        func taskTwo(){
            numbers2.sort(by: <)
            var min = numbers2.first
            var max = numbers2.last
            print("Task 2:", min, "is minimal, and", max, "is maximal")
        }
        taskTwo()
        
        func taskThree(){
            var sum = 0
            for number in numbers2{
                sum += number
            }
            print("Task 3:", sum)
        }
        taskThree()
        
        func taskFour(stringArray: [String]) -> [Int:String] {
            var index = 0
            var phrase: [Int: String] = [:]
            for i in stringArray{
                phrase.updateValue(i, forKey: index)
                index += 1
            }
            return phrase
        }
        print("Task 4:", taskFour(stringArray: stringArray))
        
        func taskFive(){
            dictionary.updateValue(4, forKey: "first")
            dictionary.updateValue(1, forKey: "fourth")
            dictionary["fifth"] = 5
            print("Task 5:", dictionary)
        }
        taskFive()
        
        func taskSix(){
            var x1 = 12
            var x2 = 12
            var y = 0
            if x1 == x2 {
                y = (x1 + x2) * 3
            } else {
                y = x1 + x2
            }
                print("Task 6:", y)
        }
        taskSix()
        
        func taskSeven(val1: Int, val2: Int) -> Bool{
            if val1 == 20 || val2 == 20 || val1 + val2 == 20{
                return true
            } else {
                return false
            }
        }
        print("Task 7:", taskSeven(val1: 10, val2: 10))
        
        func taskEight(){
            var a = 12
            var b = 8
            var condition:Bool = a == 20 || b == 20 || a + b == 20
            if condition {
                print("Task 8:", "true")
            } else {
                print("Task 8:", "false")
            }
        }
        taskEight()
        
        func taskNine(){
            var string1:String = "Hello. How are you?"
            var prefix = "ls"
            if string1.hasPrefix(prefix){
                print("Task 9:", string1)
            } else {
                print("Task 9:", prefix + string1)
            }
        }
        taskNine()
        
        func taskTen(){
            var string2:String = "Hello, world!"
            var count1 = string2.count
            if count1 < 2{
                print("Task 10:", string2)
            } else {
                var firstChar2 = Array(string2)[0]
                var secondChar2 = Array(string2)[1]
                var newString1:String = ""
                newString1.append(firstChar2)
                newString1.append(secondChar2)
                print("Task 10:", newString1)
            }
        }
        taskTen()
        
        func taskEleven(){
            var string3:String = "London is the capital of Great Britain"
            var count2 = string3.count
            if count2 < 3 {
                print("Task 11:", "Error: String should be longer than 2 symbols, try again")
            } else {
                var newString2:String = string3
                newString2.removeFirst()
                newString2.removeLast()
                print("Task 11:", newString2)
            }
        }
        taskEleven()
    }


}

