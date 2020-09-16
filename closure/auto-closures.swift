//AUTOCLOSURES
//closure yang secara otomatis dibuat untuk membungkus ekspresi yang diteruskan sebagai argumen
//ke suatu function

//contoh
var customersInLine         =   ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)
// Prints "5"
 
let customerProvider        = { customersInLine.remove(at: 0) }
print(customersInLine.count)
// Prints "5"
 
print("Now serving \(customerProvider())!")
// Prints "Now serving Chris!"
 
print(customersInLine.count)
// Prints "4"

func serve(customer customerProvider: () -> String) 
{
   print("Now serving \(customerProvider())!")
}
 
serve(customer: { customersInLine.remove(at: 0) } )
// Prints "Now serving Alex!"

// customersInLine is ["Ewa", "Barry", "Daniella"]
func serve(customer customerProvider: @autoclosure () -> String) 
{
   print("Now serving \(customerProvider())!")
}
 
serve(customer: customersInLine.remove(at: 0))
// Prints "Now serving Ewa!"


//untuk membuat autoclosure yang diijinkan untuk escape, pake @autoclosure
//contoh

// customersInLine is ["Barry", "Daniella"]
var customerProviders: [() -> String] = []
func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String) {
   customerProviders.append(customerProvider)
}
collectCustomerProviders(customersInLine.remove(at: 0))
collectCustomerProviders(customersInLine.remove(at: 0))
 
print("Collected \(customerProviders.count) closures.")
// Prints "Collected 2 closures."
for customerProvider in customerProviders 
{
   print("Now serving \(customerProvider())!")
}
// Prints "Now serving Barry!"
// Prints "Now serving Daniella!"