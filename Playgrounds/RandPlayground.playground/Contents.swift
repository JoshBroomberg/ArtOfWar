//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var rand = arc4random_uniform(13) + 1
String(format: "test%@", "hello")

var someText = "balloon"
String(format: "te%@st", someText) //%@ --> for strings to be added to it

String(format: "card%i", rand) //%i --> for integers to be added to it