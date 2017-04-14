//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 面向对象编程：
 1.属相和方法（变量和函数）
 2.继承
 3.结构体（struct）和类（class），Swift 3推荐你自己定义的对象使用结构体
 */

/*
 属性是一个类/结构体/枚举关联的变量
 实例属性：实例化后才能使用
 存储属性：保存单个类型的变量
 */


class 角色 {
    var id = ""
    var money = 0
    
}

let xiaoming = 角色()
xiaoming.id = "小明"
xiaoming.money = 666

struct 坐标 {
    var x  = 0, y = 0
}
enum 移动方式 {
    case 走
    case 跑
    case 骑
    case 传送
}

class 法师: 角色 {
    var 人物坐标 = 坐标()
    var 人物移动方式 = 移动方式.走
    var 当前坐标: 坐标 {
        get {
            switch 人物移动方式 {
            case .走:
                人物坐标.x += 1
                人物坐标.y += 1
            case .跑:
                人物坐标.x += 3
                人物坐标.y += 3
            case .骑:
                人物坐标.x += 10
                人物坐标.y += 10
            case .传送:
                人物坐标.x += 1000
                人物坐标.y += 1000
            }
            return 人物坐标
        }
        
        set {
            人物坐标 = newValue
        }
    }
    
}

var 法师1 = 法师()
法师1.当前坐标
法师1.人物坐标
法师1.人物移动方式 = .跑
法师1.当前坐标
法师1.人物坐标
法师1.人物移动方式 = .传送
法师1.当前坐标
print(法师1.人物坐标)

//计算属性的setter方法，影响其它属性
法师1.当前坐标 = 坐标(x: 2000, y: 90)
法师1.人物坐标

//法师1.人物坐标 = 坐标(x: 50, y: 60)
//法师1.当前坐标

