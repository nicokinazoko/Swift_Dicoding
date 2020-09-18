//contoh
enum CompasPoint
{
    case north
    case south
    case west
    case east
}

var directionToHead =   CompasPoint.west


directionToHead     =   .south

switch directionToHead
{
case .north:
    print("Lots of Planet have a north")

case .south:
    print("Watch out for penguins") 

case .east:
    print("Where the sun rises")

case .west:
    print("Where the skies are blue")    
}

//contoh lain
enum Planet 
{ 
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune 
    }
 
let somePlanet          =   Planet.earth
switch somePlanet 
{
    
case .earth:
   print("Mostly harmless")
default:
   print("Not a safe place for humans")
}