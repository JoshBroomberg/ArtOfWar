//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    
    //if you dont set the vars here you have to do so in the initializer
    var Name:String
    var Age:Int
    
    init(){
        self.Name = "Initial Name"
        self.Age = 10
    }
    
    func UpdateNameAndAge(nameToSet:String, ageToSet:Int){
        self.Name = nameToSet
        self.Age = ageToSet
    }
    
    func IncreaseAge(increaseAmt:Int)->Int{
        self.Age += increaseAmt
        return self.Age
        //nothing is executed after the return statement (obv)
    }
    
    //class method here (is called on class Person)
    class func AverageAge()->Int{
        return 50
    }
}

var a = Person()
a.UpdateNameAndAge("Brad", ageToSet:15)
a.Name
a.Age

var newAge = a.IncreaseAge(5)
newAge

var avg = Person.AverageAge() //class method call on class Person
