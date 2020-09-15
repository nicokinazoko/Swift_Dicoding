//mendefinisikan fungsi
//contoh

func greet(person: String) -> String 
{
    let greeting            =   "Hello " + person + "!"    
    return greeting
}

print(greet(person: "Nico"))


//bisa juga langsung return
func greetAgain(person: String) -> String 
{
    return "Hello again, " + person + "!"    
}

print(greetAgain(person: "Nico"))

