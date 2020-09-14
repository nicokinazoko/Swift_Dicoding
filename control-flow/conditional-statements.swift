//if else
//contoh
var temperatureInCelcius            =   20
if temperatureInCelcius <= 25
{
    print("It's very cold. Consider wearing a scarf")
}
else
{
    print("It's not that cold. Wear a T-shirt")
}

//contoh lain
var temperatureInCelcius            =   35
if temperatureInCelcius <= 25
{
    print("It's very cold. Consider wearing a scarf")
}
else 
if temperatureInCelcius >= 30
{
    print("It's really warm. Don't forget to wear sunscreen")
}
else
{
    print("It's not that cold. Wear a T-shirt")
}



//switch
//contoh
let someCharacter               :   Character   =   "z"
switch someCharacter
{
    case "a":
    print("The first letter of the aplhabet")

    case "z":
    print("The last letter of the alphabet")
    
    default:
    print("Some other character")
    
}

//interval matching di switch
let approximateCount                =   62
let countedThings                   =   "moons orbiting Saturn"
let naturalCount                    :   String
switch approximateCount
{
    case 0:
    naturalCount            =   "no"

    case 1..<5:
    naturalCount            =   "a few"

    case 5..<12:
        naturalCount            =   "several"

    case 12..<100:
    naturalCount            =   "dozen of"

    case 100..<1000:
    naturalCount            =   "hundreds of"

    default:
    naturalCount            =   "many"
}

print("There are \(naturalCount) \(countedThings)")


//contoh tuples
let somePoint           =   (1, 1)
switch somePoint 
{
    case (0, 0):
    print("\(somePoint) is at the origin")

    case (_, 0):
    print("\(somePoint) is on the x-axis")
    
    case (0, _):
    print("\(somePoint) is on the y-axis")

    case (-2...2, -2...2):
    print("\(somePoint) is inside the box")

    default:
    print("\(somePoint) is outside of the box")
}
// Prints "(1, 1) is inside the box"

//contoh value binding
let anotherPoint        =   (2, 0)
switch anotherPoint 
{
    case (let x, 0):
    print("on the x-axis with an x value of \(x)")

    case (0, let y):
    print("on the y-axis with a y value of \(y)")

    case let (x, y):
    print("somewhere else at (\(x), \(y))")
}
// Prints "on the x-axis with an x value of 2"

//contoh where
let yetAnotherPoint             =   (1, -1)
switch yetAnotherPoint 
{
    case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")

    case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
    
    case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}
// Prints "(1, -1) is on the line x == -y"