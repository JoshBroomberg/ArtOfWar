//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    
    var Name:String = "Initial Name"
    
    init(){
        
    }
    
    func Walk(){
        print("I'm walkin down the road")
    }
}

var a = Person()
a.Name = "Alice"
a.Walk()

class Superhuman : Person { //"extends" equivalent
    
    var AlterEgoName:String = "Clark"
    
    override init(){
        super.init()
        super.Name = "superduper"
    }
    
    func Fly(){
        print("I'm flyin high in the sky")
    }
    
    //instead of @Override\n (....)
    override func Walk(){
        print("I'm walking at the speed of light")
        
        super.Walk()//but I can also walk like a normal person YO I'm so cool
    }
}

var b = Superhuman()
b.Name = "Superman"
b.Walk()
b.Fly()


