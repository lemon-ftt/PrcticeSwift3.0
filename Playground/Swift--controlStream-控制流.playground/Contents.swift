//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var sum = 0
for i in 1...100 {
    sum += i
}
sum

//continue  结束本次循环，break结束整个循环
for j in 1...10 {
    
    if j==3 {
        break
    }
    print(j)
}

for k in 1...10 {
    
    if k==3 {
        continue
    }
    print(k)
}
