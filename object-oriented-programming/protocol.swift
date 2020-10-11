// menyediakan blue print untuk method, property, dan persyaratan fungsionalitas lainnya
// contoh syntax

protocol SomeProtocol 
{
   // definisikan protocol di sini
}

struct SomeStructure: FirstProtocol, AnotherProtocol 
{
   // definisikan structure di sini
}

class SomeClass: SomeSuperclass, FirstProtocol, AnotherProtocol 
{
   // definisikan class di sini
}


//Property Requirements
// Protocol digunakan untuk menentukan properti tipe atau properti instance dari sebuah class tertentu
// contoh

protocol SomeProtocol 
{
   var mustBeSettable: Int { get set }
   var doesNotNeedToBeSettable: Int { get }
}

//selalu awali kata static saat definisikan protocol

protocol AnotherProtocol 
{
   static var someTypeProperty: Int { get set }
}


//contoh protocol tunggal
protocol FullyNamed 
{
    var fullName: String { get }
}

struct Person: FullyNamed 
{
    var fullName: String
}
let john                    =   Person(fullName: "John Appleseed")
// john.fullName is "John Appleseed"


//contoh lain
class Starship: FullyNamed {

   var prefix: String?
   var name: String
   init(name: String, prefix: String? = nil) 
   {
       self.name        =   name
       self.prefix      =   prefix
   }
   var fullName: String 
   {
       return (prefix != nil ? prefix! + " " : "") + name
   }
}
var ncc1701                 =   Starship(name: "Enterprise", prefix: "USS")
// ncc1701.fullName is "USS Enterprise"

//Method Requirements
//contoh

protocol RandomNumberGenerator 
{
   func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator 
{
    var lastRandom                  =   42.0
    let m                           =   139968.0
    let a                           =   3877.0
    let c                           =   29573.0
    func random() -> Double 
    {
        lastRandom = ((lastRandom * a + c)
            .truncatingRemainder(dividingBy:m))
        return lastRandom / m
    }
}
let generator                       =   LinearCongruentialGenerator()
print("Here's a random number: \(generator.random())")
// Prints "Here's a random number: 0.3746499199817101"
print("And another one: \(generator.random())")
// Prints "And another one: 0.729023776863283"


//Mutating Method Requirements
//contoh
protocol Togglable 
{
    mutating func toggle()
}

enum OnOffSwitch: Togglable 
{
    case off, on
    mutating func toggle() 
    {
        switch self 
        {
        case .off:
            self        =   .on
        case .on:
            self        =   .off
        }
    }
}
 
var lightSwitch         =   OnOffSwitch.off
lightSwitch.toggle()
// lightSwitch is now equal to .on


//Initializer Requirements
//Protokol dapat membutuhkan initializer khusus untuk diimplementasikan dengan jenis yang sesuai
// contoh
protocol SomeProtocol 
{
   init(someParameter: Int)
}

//Class Implementations of Protocol Initializer Requirements
//contoh
class SomeClass: SomeProtocol 
{
   required init(someParameter: Int) 
   {
      // initializer implementation statements
   }
}
 
protocol tcpprotocol 
{
   init(aprot: Int)
}
 
class tcpClass: tcpprotocol 
{
   required init(aprot: Int) 
   {
   }
}

import Foundation
 
protocol tcpprotocol {
   init(a: Int)
}
 
class mainClass {
   var a: Int        // local storage
   init(a: Int) {
      self.a = a  // initialization
   }
}
 
class subClass: mainClass, tcpprotocol 
{
   var b: Int
   init(a: Int, b : Int) 
   {
        self.b            =   b
        super.init(a:a)
   }
   // Hanya membutuhkan satu parameter untuk convenient method
   required override convenience init(a: Int) 
   {
        self.init(a:a, b:0)
   }
}
 
let resultMainClass         =   mainClass(a: 30)
let resultSubClass          =   subClass(a: 50, b: 60)
print("result is: \(resultMainClass.a)") //output : result is: 30
print("result is: \(resultSubClass.a)") //output : result is: 50
print("result is: \(resultSubClass.b)") //output : result is: 60