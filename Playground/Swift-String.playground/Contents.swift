//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//--------------创建空的字符串--------------
var emptyString = ""
var anotherEmptyString = String()
if emptyString.isEmpty {
    print("Nothing to see here")
}

if anotherEmptyString.isEmpty {
    print("The same to it")
}

//--------------字符串的可变性--------------
var variableString = "horse"
variableString += " and carriage"

//--------------字符串的字符--------------
for characterString in "dog!?".characters {
    print(characterString)
}
for cha in variableString.characters {
    print(cha)
}

//--------------连接字符串和字符--------------
let string1 = "Hello"
let string2 = " welcome"
var welcome = string1 + string2
var instruction = "look over"
instruction += string2
//可以用append()方法将一个字符附加到一个字符串变量的尾部
let exclamationMark: Character = "!"
welcome.append(exclamationMark)

//--------------字符串插值--------------
/*您插入的字符串字面量的每一项都在以反斜线为前缀的圆括号中*/
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier)*2.5)"
let message1 = "\(string1 + string2)"

//--------------访问和修改字符串--------------
//你可以使用下标语法来访问 String 特定索引的 Character
let greeting = "Guten Tag!"
print(greeting[greeting.startIndex])
print(greeting[greeting.index(after: greeting.startIndex)])
print(greeting[greeting.index(before: greeting.endIndex)])
print(greeting[greeting.index(greeting.startIndex, offsetBy: 7)])
//试图获取越界索引对应的 Character ，将引发一个运行时错误
/*endIndex 属性可以获取最后一个 Character 的后一个位置的索引。因此， endIndex 属性不能作为一个字符串的有效下标*/
//print(greeting[greeting.endIndex]) // 编译不通过
//使用 characters 属性的 indices 属性会创建一个包含全部索引的范围( Range )，用来在一个字符串中访问单个字符。
for index in greeting.characters.indices {
    print(greeting[index])
    print("\(greeting[index])")
}

//--------------插入和删除--------------
//调用 insert(_:atIndex:) 方法可以在一个字符串的指定索引插入一个字符，调用 insert(contentsOf:at:) 方法可以在一个字符串的指定索引插入一个段字符串
var welcomeStr = "hello"
welcomeStr.insert("!", at: welcomeStr.endIndex)
welcomeStr.insert("!", at: welcomeStr.index(before: welcomeStr.endIndex))
print(welcomeStr)
print(welcomeStr[welcomeStr.index(before: welcomeStr.endIndex)])
welcomeStr.insert(contentsOf: " there".characters, at: welcomeStr.index(before: welcomeStr.endIndex))
//调用 remove(at:) 方法可以在一个字符串的指定索引删除一个字符，调用 removeSubrange(_:) 方法可以在一个字符串的指定索引删除一个子字符串
welcomeStr.remove(at: welcomeStr.index(before: welcomeStr.endIndex))
print(welcomeStr)
/*闭集范围操作符
 
 闭集（类似于数学中的闭集）操作符(a...b),定义了一个在a和b之间构成的范围，包括a和b.
 
 闭集操作符在遍历一个范围的时候很有用，这样你就可以获取每个值，比如在for-in循环中。
 
 关于for-in循环，可以参考流程控制
 半闭集范围操作符
 
 半闭集范围操作符(a..b)，定义了一个a和b之间的范围，但是不包括b.这就为什么叫他半闭集的原因了，包括下限，但是不包括上限。*/
let range = welcomeStr.index(welcomeStr.endIndex, offsetBy: -6)..<welcomeStr.endIndex
print("\(range)")
welcomeStr.removeSubrange(range)

//--------------比较字符串-------------
//Swift 提供了三种方式来比较文本值：字符串字符相等、前缀相等和后缀相等
//字符串/字符相等           字符串/字符可以用等于操作符( == )和不等于操作符( != )，
let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    print("There two strings are considered equal")
}

//前缀/后缀相等       通过调用字符串的 hasPrefix(_:) / hasSuffix(_:) 方法来检查字符串是否拥有特定前缀/后缀，两个方法均接收一个 String 类型的参数，并返回一个布尔值。
