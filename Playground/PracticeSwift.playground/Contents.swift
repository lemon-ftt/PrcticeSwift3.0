//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let string = "Practice"

print(str+string)


var mulStr = "practice"

var mulStr1 = "practice2"
var str3:String = ""

str3 = mulStr+mulStr1
print(mulStr+mulStr1)
str3.startIndex
str3.endIndex


//var str56:String?
//print(str56)

var mulString=""
print(mulString)
mulString = "mulStrng"
print(mulString)

print(str, terminator: "")

print("The current value of friendlyWelcome is \(str)")

let swift = "swift"

print("Practice \(swift)")

let minValue = UInt8.min
let maxValue = UInt8.max

let octalInteger = 0o21


let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let turnipsAreDelicious = false
if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
}else{
    print("Eww, turnips are horrible.")
}

let http404Error = (404,"Not Found")
let (statusCode,statuesMassage) = http404Error
print(statusCode,statuesMassage)
print(http404Error.0)
print(http404Error.1)


let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
var serverResponseCode: Int? = 404
/// 如果确定可选包确实含值，你可以在可选的名字后面加一个感叹号(!)来获取值。这个惊叹号表示“我知道这个可选有值，请使用它。”这被称为可选值的强制解析（forced unwrapping）注意：使用!来获取一个不存在的可选值会导致运行时错误。使用!来强制解析值之前，一定要确定可选包含一个非nil的值。
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}

////可以在一个if语句中包含多个可选绑定，并用where字句来检查判断条件的布尔值
//if let firstNumber = Int("4"), secondNumber = Int("42") where firstNumber < secondNumber {
//    print("\(firstNumber) < \(secondNumber)")
//}

var list = ["catfish","water","tulips","blue paint"]
list[0] = "bottle of water"
print(list[0])
print(list)








