//contoh
class Vehicle 
{
    var currentSpeed = 0.0
    var description: String 
    {
        return "traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise() 
    {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

class Bicycle: Vehicle 
{
    var hasBasket = false
}

let bicycle                         =   Bicycle()
bicycle.hasBasket                   =   true
bicycle.currentSpeed                =   15.0
print("Bicycle: \(bicycle.description)")
// output : Bicycle: traveling at 15.0 miles per hour

class Tandem: Bicycle 
{
    var currentNumberOfPassengers = 0
}

let tandem                          =   Tandem()
tandem.hasBasket                    =   true
tandem.currentNumberOfPassengers    =   2
tandem.currentSpeed                 =   22.0
print("Tandem: \(tandem.description)")
// output : Tandem: traveling at 22.0 miles per hour


//OVERRIDE
//Sebuah subclass dapat menyediakan implementasi khusus dari instance method, 
//type method, instance property, type property, atau subscript yang akan diwarisi dari superclass
//intinya nimpa dari superclass nya
//contoh

class Train: Vehicle 
{
    override func makeNoise() 
    {
        print("Choo Choo")
    }
}

let train                       =   Train()
train.makeNoise()
// output : Choo Choo


//contoh override lain
class Car: Vehicle 
{
    var gear                    =   1
    override var description: String 
    {
        return super.description + " in gear \(gear)"
    }
}

let car                         =   Car()
car.currentSpeed                =   25.0
car.gear                        =   3
print("Car: \(car.description)")
// output : traveling at 25.0 miles per hour in gear 3