//CLOSED RANGE OPERATORS
//penggunaanya titik tiga (...)
//contoh
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")   
}
//output :
// 1 times 5 is 5
// 2 times 5 is 10
// 3 times 5 is 15
// 4 times 5 is 20
// 5 times 5 is 25

//HALF OPEN RANGE OPERATORS
//penggunaanya kayak a < b
//contoh

let names           =   ["Anna", "Alex", "Brian", "Jack"]
let count           =   names.count

for i in 0..<count 
{
    print("Person \(i + 1) is called \(names[i])")
}

//output :
// Person 1 is called Anna
// Person 2 is called Alex
// Person 3 is called Brian
// Person 4 is called Jack



//ONE-SIDE RANGE OPERATOR
//penggunaannya seperti misal index dimulai dari 2 sampai indeks terakhir
//penggunaannya angka diikuti titik tiga (2.... ) atau (...3)
//contoh

let names           =   ["Anna", "Alex", "Brian", "Jack"]
for name in names[2...] 
{
    print(name)   
}
//output :
// Brian
// Jack

for name in names[...2] 
{
    print(name)    
}

//output :
// Anna
// Alex
// Brian

//bisa juga dikombinasikan dengan half open range
//bedanya titik nya cuma 2
//contoh
let names           =   ["Anna", "Alex", "Brian", "Jack"]
for name in names [..<2]
{   
    print(name)
}
//output :
// Anna
// Alex