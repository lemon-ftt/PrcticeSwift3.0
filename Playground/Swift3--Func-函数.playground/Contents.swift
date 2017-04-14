//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*----------定义函数-----------*/
/*
 1.形式：func 函数名(参数1:类型,参数2:类型,...) -> 返回结果的数据类型 {执行语句}
 2.调用：var 变量名称 = 函数名(变量1,变量2,...)
 */


//无参无返回值
func welcome() {
    print("欢迎")
    print("学习")
}

welcome()


//多返回值
func maxMin() -> (Int,Int) {
    return (Int.max, Int.min)
}

maxMin().0
maxMin().1

//函数类型：包含参数和返回类型的简写形式，可以像普通变量那样使用，一般用于函数式编程：eg：(Int,Int) ->Int
func total(x: Int, y: Int, method:(Int, Int) -> Int) -> Int {
    return method(x,y)
}

func add(x:Int, y:Int) -> Int {
    return x + y
}

func multiply(x:Int, y:Int) -> Int {
    return x * y
}

total(x: 5, y: 6, method: add)
total(x: 2, y: 3, method: multiply)


