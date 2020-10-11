//contohnya
func swapTwoInts(_ a: inout Int, _ b: inout Int) 
{
   let temporaryA = a
   a = b
   b = temporaryA
}

var someInt                             =   4
var anotherInt                          =   157
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// Prints "someInt is now 157, and anotherInt is now 4"



func swapTwoStrings(_ a: inout String, _ b: inout String) 
{
   let temporaryA   =   a
   a                =   b
   b                =   temporaryA
}
 
func swapTwoDoubles(_ a: inout Double, _ b: inout Double) 
{
   let temporaryA   =   a
   a                =   b
   b                =   temporaryA
}


//contoh lain
func swapTwoValues<T>(_ a: inout T, _ b: inout T) 
{
   let temporaryA   =     a
   a                =   b
   b                =   temporaryA
}

func swapTwoInts(_ a: inout Int, _ b: inout Int)
func swapTwoValues<T>(_ a: inout T, _ b: inout T)


var someInt                     =   83
var anotherInt                  =   203
swapTwoValues(&someInt, &anotherInt)
// someInt sekarang adalah 203, and anotherInt  sekarang adalah 83
 
var someString                  =   "Dicoding"
var anotherString               =   "Indonesia"
swapTwoValues(&someString, &anotherString)
// someString sekarang adalah "Indonesia", and anotherString sekarang adalah "Dicoding"


//Generic Types
struct IntStack 
{
   var items = [Int]()
   mutating func push(_ item: Int) 
   {
       items.append(item)
   }
   mutating func pop() -> Int 
   {
       return items.removeLast()
   }
}


struct Stack<Element> 
{
   var items = [Element]()
   mutating func push(_ item: Element) 
   {
       items.append(item)
   }
   mutating func pop() -> Element 
   {
       return items.removeLast()
   }
}

var dicodingAcademy                 =   Stack<String>()
dicodingAcademy.push("Memulai Pemrograman dengan Kotlin")
dicodingAcademy.push("Menjadi Android Developer Expert ")
dicodingAcademy.push("Belajar Android untuk Pemula")
dicodingAcademy.push("Memulai Pemrograman Dengan Swift")

let fromTheTop                      =   dicodingAcademy.pop()
// fromTheTop sama dengan "Memulai Pemrograman Dengan Swift", dan stack saat ini berisi 3 strings


// Extending a Generic Type

extension Stack 
{
   var topItem: Element? 
   {
       return items.isEmpty ? nil : items[items.count - 1]
   }
}

if let topItem = dicodingAcademy.topItem 
{
   print("The top item on the stack is \(topItem).")
}
// Prints "The top item on the stack is Belajar Android untuk Pemula."


//associated Types
//contoh

protocol Container 
{
   associatedtype Item
   mutating func append(_ item: Item)
   var count: Int { get }
   subscript(i: Int) -> Item { get }
}


struct IntStack: Container 
{
   // original IntStack implementation
   var items                =   [Int]()
   mutating func push(_ item: Int) 
   {
       items.append(item)
   }
 
   mutating func pop() -> Int 
   {
       return items.removeLast()
   }
 
   // conformance to the Container protocol
   typealias Item           =   Int
   mutating func append(_ item: Int) 
   {
       self.push(item)
   }
 
   var count: Int 
   {
       return items.count
   }
 
   subscript(i: Int) -> Int 
   {
       return items[i]
   }
}


struct Stack<Element>: Container 
{
   // original Stack<Element> implementation
   var items            =   [Element]()
   mutating func push(_ item: Element) 
   {
       items.append(item)
   }
 
   mutating func pop() -> Element 
   {
       return items.removeLast()
   }
 
   // conformance to the Container protocol
   mutating func append(_ item: Element) 
   {
       self.push(item)
   }
 
   var count: Int 
   {
       return items.count
   }
 
   subscript(i: Int) -> Element 
   {
       return items[i]
   }
}


var dicodingAcademy                 =   Stack<String>()
dicodingAcademy.push("Memulai Pemrograman dengan Kotlin")
print(dicodingAcademy.items)
 
dicodingAcademy.push("Menjadi Android Developer Expert ")
print(dicodingAcademy.items)
 
dicodingAcademy.push("Belajar Android untuk Pemula")
print(dicodingAcademy.items)
 
dicodingAcademy.push("Memulai Pemrograman Dengan Swift")
print(dicodingAcademy.items)