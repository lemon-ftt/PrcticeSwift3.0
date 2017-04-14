//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//定义枚举
enum Weather {
    case sunny
    case cloudy
    case rainy
    case snow
    case froggy
}

//使用
Weather.cloudy

//与switch配合使用。如果是枚举值，可省略枚举名
var todayWeather = Weather.cloudy

switch todayWeather {
case .sunny:
    print("天气晴朗")
case .cloudy:
    print("今天天气多云")
default:
     print("天气情况未知")
}
