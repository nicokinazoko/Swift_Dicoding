//MEMBUAT ARRAY KOSONG
//contoh
var someInts                =   [Int]()
print("someInts dengan tipe [Int] dengan \(someInts.count) item.")

//penambahan angka 3
someInts.append(3)
someInts                    =   []

print(someInts)

//MEMBUAT ARRAY NILAI DEFAULT
//contoh
var threeDoubles            =   Array(repeating: 0.1, count: 3)
print(threeDoubles)


//MEMBUAT ARRAY DENGAN MENAMBAHKAN DUA ARRAY SEKALIGUS
//pake tambah (+)

var threeDoubles            =   Array(repeating: 0.1, count: 3)
var anotherThreeDoubles     =   Array(repeating: 2.5, count: 3)
var sixDoubles              =   threeDoubles + anotherThreeDoubles
print(sixDoubles)


//MEMBUAT ARRAY DENGAN ARRAY LITERAL
//contoh
var shoppingList            :   [String]    =   ["Eggs", "Milk"]
print(shoppingList) //output : ["Eggs", "Milk"]


//ACCESSING AND MODIFYING AN ARRAY
var shoppingList            =   ["Eggs", "Milk"]

//isEmpty
//mengecek apakah ada isinya atau tidak
//contoh
if shoppingList.isEmpty
{
    print("The Shopping list is Empty.")
}
else
{
    print("The Shopping list is not empty")    
}

//append
//gunanya untuk menambahkan nilai di belakang variabel atau konstanta sebelumnya
//contoh
var shoppingList            =   ["Eggs", "Milk"]
shoppingList.append("Flour")
print(shoppingList) //output : ["Eggs", "Milk", "Flour"]

//+=
//menambahkan array
var shoppingList            =   ["Eggs", "Milk"]
shoppingList.append("Flour")

shoppingList                +=  ["Baking Powder"]
print(shoppingList) //output : ["Eggs", "Milk", "Flour", "Baking Powder"]
shoppingList                +=  ["Chocolate Spread", "Cheese", "Butter"]
print(shoppingList) //output : ["Eggs", "Milk", "Flour", "Baking Powder", "Chocolate Spread", "Cheese", "Butter"]


//ACCESSING VALUE
//contoh
var firstTime               =   shoppingList[0]
print(firstTime) //output : Eggs


//MODIFYING VALUE
//contoh
shoppingList[0]             =   "Six Eggs"
print(shoppingList) //output : ["Six Eggs", "Milk", "Flour", "Baking Powder", "Chocolate Spread", "Cheese", "Butter"]

//mengubah panjang dan isinya juga
//contoh
shoppingList[4...6]         =   ["Bananas", "Apples"]
print(shoppingList) //output : "Six Eggs", "Milk", "Flour", "Baking Powder", "Bananas", "Apples"]


//insert
//contoh
shoppingList.insert("Maple Syrup", at: 0)
print(shoppingList) //output : ["Maple Syrup", "Six Eggs", "Milk", "Flour", "Baking Powder", "Bananas", "Apples"]


//remove 
//contoh
let mapleSyrup              =   shoppingList.remove(at: 0)
print(shoppingList) //output : ["Six Eggs", "Milk", "Flour", "Baking Powder", "Bananas", "Apples"]

//removeLast()
//menghapus index terakhir
//contoh
let apples                  =   shoppingList.removeLast()
print(shoppingList) //output : ["Six Eggs", "Milk", "Flour", "Baking Powder", "Bananas"]

//cara output semua data
for item in shoppingList 
{
    print(item, terminator: " ")    
}


//untuk mendapatkan indeks tiap itemnya, pake enumerated()
//gunanya untuk mengembalikan nilai tuples yang terdiri dari integer dan value itemnya
//contoh
for (index,value) in shoppingList.enumerated() 
{
    print("Item \(index + 1) :  \(value)")    
}
