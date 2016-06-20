//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var myArray:[String] = ["book", "cat", "dog"] //not myArray:String! this would indicate that it stores a single string (i.e. it IS a string itself)

myArray[0]
myArray.count //like .size
myArray.insert("dinosaur rex", atIndex: 0)
myArray.count

myArray[0]
myArray.append("dragonosaurus")
myArray[myArray.count-1]

myArray += ["catfish"]
myArray.count
print(myArray)

myArray.removeAll()
myArray.count

var anotherArray:[Int] = [Int]() //new empty array!
var asd:[Int] = [] //apparently it is the same as ^

asd.append(1)
asd.count
print(asd)