//OPERASI ANTAR SET

//INTERSECTION
//mirip sama inner join
//contoh
//a.intersection(b)

//symmetricDifference
//mirip sama outer join
//contoh
//a.symmetricDifference(b)

//union
//mirip sama full join
//contoh
//a.union(b)


//subtracting
//yang ada di a, tapi tidak ada di b
//contoh
//a.substracting(b)


//contoh
let oddDigits                   :   Set     =   [1,3,5,7,9]
let evenDigits                  :   Set     =   [0,2,4,6,8]

let singleDigitsPrimeNumber     :   Set     =   [2,3,5,7]
print(oddDigits.union(evenDigits).sorted())
//output : [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
print(oddDigits.intersection(evenDigits).sorted())
//output : []
print(oddDigits.subtracting(singleDigitsPrimeNumber).sorted())
//output : [1, 9]
print(oddDigits.symmetricDifference(singleDigitsPrimeNumber).sorted())
//output : [1, 2, 9]


//SET MEMBERSHIP AND EQUALITY
//penggunaannya

//is equal operator ==      =   untuk menentukan apakah dua set berisi semua nilai yang sama
//isSubset(of:)             =   untuk menentukan apakah semua nilai termasuk dari subset
//isSuperset(of:)           =   untuk mengetahui apakah suatu set termasuk dalam set tertentu
//isStrictSubset(of:)       =   untuk menentukan apakah set adalah subset atau superset, tapi tidak sama dengan set yang ditentukan
//isDisjoint(with: )        =   untuk menentukan apakah dua set tidak memiliki nilai yang sama

//contoh
let houseAnimals            :   Set         =   ["dog", "chicken"]
let farmAnimals             :   Set         =   ["cow", "chicken", "goat", "dog", "cat"]
let cityAnimals             :   Set         =   ["bird", "mouse"]
print(houseAnimals.isSubset(of: farmAnimals))
//output : true
print(farmAnimals.isSuperset(of: houseAnimals))
//output : true
print(farmAnimals.isDisjoint(with: cityAnimals))
//output : true

