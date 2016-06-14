//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    
    //properties declared at the top of a class (vs. variables = decl/used within methods)
    var Name:String = "Initial Name"
    
    init () {
        self.sayCheese() //"this" equivalent
    }
    
    func sayCheese () {
        print("Cheese")
    }
    
}

var a = Person()

a.sayCheese()


var b:Int = 10
var c:Int = 15
var total:Int = b + c

var firstPerson = Person()
firstPerson.Name
firstPerson.Name = "Alice"
firstPerson.Name

var secondPerson = Person()
secondPerson.Name = "Bob"

firstPerson.Name
secondPerson.Name



