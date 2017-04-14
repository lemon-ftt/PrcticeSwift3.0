//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let numMax = 10
var numMin = 0;
var x = 0.0, y = 0.1, z = 0.2

var welcomeMessage: String
welcomeMessage = "Hello, This is string."

var red, green, blue: Double
print(welcomeMessage)
print("The current value of welcomeMassage is \(welcomeMessage)")

//注意：
/*Swift 的 nil 和 Objective-C 中的 nil 并不一样。在 Objective-C 中， nil 是一个指向不存在对象的指
针。在 Swift 中， nil 不是指针——它是一个确定的值，用来表示值缺失。任何类型的可选状态都可以被设
置为 nil ，不只是对象类型。*/
var optionValue: String?

//创建空的字符串
var emptyString = ""
var anotherEmptyString = String()
if emptyString.isEmpty {
    print("Nothing to see here")
}

if anotherEmptyString.isEmpty {
    print("The same to it")
}







