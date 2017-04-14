//: Playground - noun: a place where people can play

import UIKit


var str = "Hello, playground"

//--------创建一个空数组---------
//利用构造语法来创建一个由特定数据类型构成的数组
var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")
var someString = [String]()
print("someString is of type [String] with \(someString.count) items.")

//--------创建一个带有默认值的数组---------
var threeDoubles = Array(repeating: 0.1, count: 3)
print(threeDoubles)
var num = [Int](repeating: 3, count: 5)
let array5 = [String](repeating: "5", count: 5)

//--------通过两个数组相加创建一个数组---------
//我们可以使用加法操作符（ + ）来组合两种已存在的相同类型数组。新数组的数据类型会被从两个数组的数据类型中推断出来
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles

//--------用字面量构造数组---------
//我们可以使用字面量来进行数组构造，这是一种用一个或者多个数值构造数组的简单方法。字面量是一系列由逗号分割并由方括号包含的数值：[value 1, value 2, value 3] 。
var shoppingList: [String] = ["Eggs","Milk"]
//利用类型推断机制，也可以如此创建
var shoppingList1 = ["Eggs","Milk"]

//--------访问和修改数组---------
//我们可以通过数组的方法和属性来访问和修改数组，或者使用下标语法。
print("The shopping list contains \(shoppingList.count) items.")
//使用布尔值属性 isEmpty 作为检查 count 属性的值是否为 0 的捷径：
if shoppingList.isEmpty {
    print("The shopping list is empty.")
}else {
    print("The shopping list is not empty.")
}
//也可以使用 append(_:) 方法在数组后面添加新的数据项：
shoppingList.append("Flour")
//除此之外，使用加法赋值运算符（ += ）也可以直接在数组后面添加一个或多个拥有相同类型的数据项：
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread","Cheese","Butter"]
var shoppingListFirstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
print(shoppingList)
//还可以利用下标来一次改变一系列数据值，即使新数据和原有数据的数量是不一样的。
shoppingList[4...6] = ["Bananas","Apples"]
print(shoppingList)
//调用数组的 insert(_:at:) 方法来在某个具体索引值之前添加数据项：
shoppingList.insert("Maple Surup", at: 0)
print(shoppingList)
//类似的我们可以使用 remove(at:) 方法来移除数组中的某一项。这个方法把数组在特定索引值中存储的数据项移除并且返回这个被移除的数据项
let mapleSyrup = shoppingList.remove(at: 0)
print(shoppingList)
//如果我们只想把数组中的最后一项移除，可以使用 removeLast() 方法而不是 remove(at:) 方法来避免我们需要获取数组的 count 属性。就像后者一样，前者也会返回被移除的数据项：
let apples = shoppingList.removeLast()
print(shoppingList)

//-----------数组的遍历-----------
//我们可以使用 for-in 循环来遍历所有数组中的数据项：
for item in shoppingList {
    print(item)
}
//如果我们同时需要每个数据项的值和索引值，可以使用 enumerate() 方法来进行数组遍历。 enumerate() 返回一个由每一个数据项索引值和数据值组成的元组。我们可以把这个元组分解成临时常量或者变量来进行遍历：
for (index,value) in shoppingList.enumerated() {
    print("Item \(String(index + 1)):\(value)")
}

//------------集合------------
//集合(Set)用来存储相同类型并且没有确定顺序的值。当集合元素顺序不重要时或者希望确保每个元素只出现一次时可以使用集合而不是数组
//你可以通过构造器语法创建一个特定类型的空集合：
var letters = Set<Character>()
print(letters)
//此外，如果上下文提供了类型信息，比如作为函数的参数或者已知类型的变量或常量，我们可以通过一个空的数组字面量创建一个空的 Set ：
letters.insert("a")
print(letters)
letters = []
print(letters)
//用数组字面量创建集合
//你可以使用数组字面量来构造集合，并且可以使用简化形式写一个或者多个值作为集合元素
/*这个 favoriteGenres 变量被声明为“一个 String 值的集合”，写为 Set<String> 。由于这个特定的集合含有指定 String 类型的值，所以它只允许存储 String 类型值。这里的 favoriteGenres 变量有三个 String 类型的初始 值( "Rock" ， "Classical" 和 "Hip hop" )，并以数组字面量的方式出现。*/
var favoriteGenres: Set<String> = ["Rock","Classical","Hip hop"]
/*一个 Set 类型不能从数组字面量中被单独推断出来，因此 Set 类型必须显式声明。然而，由于 Swift 的类型推断功能，如果你想使用一个数组字面量构造一个 Set 并且该数组字面量中的所有元素类型相同，那么你无须写出 Set 的具体类型。 favoriteGenres 的构造形式可以采用简化的方式代替：*/
var favoriteGenres1: Set = ["Rock","Classical","Hip hop"]

//访问和修改一个集合
//你可以通过Set的属性和方法来访问和修改一个Set 
//为了找出一个 Set 中元素的数量，可以使用其只读属性 count ：
print("I have \(favoriteGenres.count) favorite music genres.")
//使用布尔属性 isEmpty 作为一个缩写形式去检查 count 属性是否为 0 ：
if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not pickty.")
}else {
    print("I have particular music preferences.")
}
//你可以通过调用 Set 的 insert(_:) 方法来添加一个新元素：
favoriteGenres.insert("Jazz")
print(favoriteGenres)
//你可以通过调用 Set 的 remove(_:) 方法去删除一个元素，如果该值是该 Set 的一个元素则删除该元素并且返回被删除的元素值，否则如果该 Set 不包含该值，则返回 nil 。另外， Set 中的所有元素可以通过它的 removeAll() 方法删除。
if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}
//使用 contains(_:) 方法去检查 Set 中是否包含一个特定的值：
if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}

//遍历一个集合
//你可以在一个 for-in 循环中遍历一个 Set 中的所有值
for genre in favoriteGenres {
    print("\(genre)")
}
/*Swift 的 Set 类型没有确定的顺序，为了按照特定顺序来遍历一个 Set 中的值可以使用 sorted() 方法，它将返 回一个有序数组，这个数组的元素排列顺序由操作符'<'对元素进行比较的结果来确定.*/
for genre in favoriteGenres.sorted() {
    print("\(genre)")
}

//集合操作
/*
 • 使用 intersection(_:) 方法根据两个集合中都包含的值创建的一个新的集合。
 • 使用 symmetricDifference(_:) 方法根据在一个集合中但不在两个集合中的值创建一个新的集合。
 • 使用 union(_:) 方法根据两个集合的值创建一个新的集合。
 • 使用 subtracting(_:) 方法根据不在该集合中的值创建一个新的集合。
 */
let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let singleDigitPrimeNumbers: Set = [2,3,5,7]
oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
/*
 • 使用“是否相等”运算符( == )来判断两个集合是否包含全部相同的值。
 • 使用 isSubset(of:) 方法来判断一个集合中的值是否也被包含在另外一个集合中。
 • 使用 isSuperset(of:) 方法来判断一个集合中包含另一个集合中所有的值。
 • 使用 isStrictSubset(of:) 或者 isStrictSuperset(of:) 方法来判断一个集合是否是另外一个集合的子集合或
 者父集合并且两个集合并不相等。
 • 使用 isDisjoint(with:) 方法来判断两个集合是否不含有相同的值(是否没有交集)。
 */
let houseAnimals: Set = ["?","?"]
let farmAnimals: Set = ["?","?","?","?","?"]
let cityAnimals: Set = ["?","?"]
houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)

///------------------字典-------------------
//------字典类型快捷语法------
//---创建一个空字典---
//我们可以像数组一样使用构造语法创建一个拥有确定类型的空字典：
var namesOfIntegers = [Int: String]()
print(namesOfIntegers)
namesOfIntegers[16] = "sixteen"
print(namesOfIntegers)
//如果上下文已经提供了类型信息，我们可以使用空字典字面量来创建一个空字典，记作 [:]
namesOfIntegers = [:]

//------用字典字面量创建字典------
var airports: [String: String] = ["YYZ": "Toronto Pearson","DUB": "Dublin"]
print(airports)
//和数组一样，我们在用字典字面量构造字典时，如果它的键和值都有各自一致的类型，那么就不必写出字典的类型。 airports 字典也可以用这种简短方式定义：
var airports1 = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

//---访问和修改字典---
//我们可以通过字典的方法和属性来访问和修改字典，或者通过使用下标语法。
//和数组一样，我们可以通过字典的只读属性 count 来获取某个字典的数据项数量：
print("The dictionary of airports contains \(airports.count) items")
//使用布尔属性 isEmpty 来快捷地检查字典的 count 属性是否等于0：
if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary is not empty.")
}

//我们也可以在字典中使用下标语法来添加新的数据项。可以使用一个恰当类型的键作为下标索引，并且分配恰当类型的新值：
airports["LHR"] = "London"
//我们也可以使用下标语法来改变特定键对应的值：
airports["LHR"] = "London Heathrow"
print(airports)

/*
 作为另一种下标方法，字典的 updateValue(_:forKey:) 方法可以设置或者更新特定键对应的值。就像上面所示的
 下标示例， updateValue(_:forKey:) 方法在这个键不存在对应值的时候会设置新值或者在存在时更新已存在的
 值。和上面的下标方法不同的， updateValue(_:forKey:) 这个方法返回更新值之前的原值。这样使得我们可以检
 查更新是否成功
 */














