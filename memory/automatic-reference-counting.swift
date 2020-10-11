//contoh 
class Person 
{
   let name     :   String
   init(name    :   String) 
   {
       self.name            =   name
       print("\(name) is being initialized")
   }
   deinit 
   {
       print("\(name) is being deinitialized")
   }
}


var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = Person(name: "Dicoding indonesia")


// Strong Reference Cycles Between Class Instances

class Person 
{
   let name         :   String
   init(name: String) { self.name = name }
   var apartment    :   Apartment?
   deinit { print("\(name) is being deinitialized") }
}
 
class Apartment 
{
   let unit         :   String
   init(unit: String) { self.unit = unit }
   var tenant       :   Person?
   deinit { print("Apartment \(unit) is being deinitialized") }
}

var memberDicoding: Person?
var dicodingSpace: Apartment?

memberDicoding = Person(name: "Nico")
dicodingSpace = Apartment(unit: "Dicoding Academy")

memberDicoding!.apartment = dicodingSpace
dicodingSpace!.tenant = memberDicoding



//Weak References

class Person 
{
   let name         :   String
   init(name: String) { self.name = name }
   var apartment    :   Apartment?
   deinit { print("\(name) is being deinitialized") }
}
 
class Apartment 
{
   let unit         :   String
   init(unit: String) { self.unit = unit }
   weak var tenant  :   Person?
   deinit { print("Apartment \(unit) is being deinitialized") }
}


var memberDicoding: Person?
var dicodingSpace: Apartment?
memberDicoding = Person(name: "Nico")
dicodingSpace = Apartment(unit: "Dicoding Academy")
memberDicoding!.apartment = dicodingSpace
dicodingSpace!.tenant = memberDicoding



// Unowned References
class Person 
{
   let name         :   String
   var number       :   PhoneNumber?
   init(name: String) 
   {
       self.name = name
   }
   deinit { print("\(name) is being deinitialized") }
}
 
class PhoneNumber 
{
   let number       :   UInt64
   unowned let owner:   Person
   init(number: UInt64, owner: Person) 
   {
       self.number      =   number
       self.owner       =   owner
   }
   deinit { print("Phone number +\(number) is being deinitialized") }
}

var memberDicoding: Person?

memberDicoding              =   Person(name: "Nico")
memberDicoding!.number      =   PhoneNumber(number: 62810_8108_1081, owner: memberDicoding!)