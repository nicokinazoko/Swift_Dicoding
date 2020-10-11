// Conflicting Access to In-Out Parameters

var stepSize            =   1
func increment(_ number: inout Int) 
{
   number               +=  stepSize
}
increment(&stepSize)
// Error: conflicting accesses to stepSize

// Buat salinan secara eksplisit.
var copyOfStepSize = stepSize
increment(&copyOfStepSize)
 
// Perbarui variabel yang asli.
stepSize = copyOfStepSize
// stepSize sekarang bernilai 2



func balance(_ x: inout Int, _ y: inout Int) 
{
   let sum          =   x + y
   x                =   sum / 2
   y                =   sum - x
}
var playerOneScore  =   42
var playerTwoScore  =   30
balance(&playerOneScore, &playerTwoScore)  // OK
balance(&playerOneScore, &playerOneScore)
// Error: conflicting accesses to playerOneScore




// Conflicting Access to self in Methods
struct Player 
{
   var name     :   String
   var health   :   Int
   var energy   :   Int
   static let maxHealth     =   10
   mutating func restoreHealth() 
   {
       health               =   Player.maxHealth
   }
}


extension Player 
{
   mutating func shareHealth(with teammate: inout Player) 
   {
       balance(&teammate.health, &health)
   }
}
var nico1       =     Player(name: "Nico", health: 10, energy: 10)
var nico2       =     Player(name: "Nico", health: 5, energy: 10)
nico1.shareHealth(with: &nico2)  // OK

nico1.shareHealth(with: &nico1)
// Error: conflicting accesses to nico




// Conflicting Access to Properties

var playerInformation           =   (health: 10, energy: 20)
balance(&playerInformation.health, &playerInformation.energy)
//conflict

var yourName                    =   Player(name: "Nama kamu", health: 10, energy: 10)
balance(&yourName.health, &yourName.energy)  // Error


func someFunction() 
{
   var nico                     =   Player(name: "Nico", health: 10, energy: 10)
   balance(&nico.health, &nico.energy)  // OK
}