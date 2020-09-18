//cara mendapatkan semua data di enum

//contoh
enum Beverage:  CaseIterable
{
    case coffee,tea,juice
}

let numberOfChoices         =   Beverage.allCases.count

print("\(numberOfChoices) beverages available")

//cara akses semua data
//contoh
for beverages in Beverage.allCases
{
    print(beverages)
}