//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*------------闭包-----------*/
//闭包是一种函数的简写形式，省去函数名，把参数和返回值放入花括号内。

//{(a: Int, b: Int) -> Int in
//执行语句
//return ...
//}

var city = ["zhengzhou","xiamen","hefei","nanchang","nanjing"]
// sorted函数用于对数组的排序，只接受一个函数型参数，描述排序逻辑。
var cityList1 = city.sorted()

func daoxu(a: String, b: String) -> Bool {
    return a > b
}
var cityList2 = city.sorted(by: daoxu)

//用闭包表达式来改写：
//NO.1
var cityList3 = city.sorted { (a, b) -> Bool in
    return a > b
}

//NO.2 
//闭包的自动推断：1.参数和返回类型可自动推断，单表达式可以忽略return关键词
var cityList4 = city.sorted { (a, b) in
    a > b
}

//2.可使用快捷参数，前缀$，从0开始递增
var cityList5 = city.sorted { $0 > $1 }
cityList5


