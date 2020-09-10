//kayak if else
//cuma bedanya kalo yang awal nil/null maka akan mengambil data setelahnya
//contoh
let defaultColorName        =   "Red"
var userDefinedColorName    :   String?
var colorNameToUse          =   userDefinedColorName ?? defaultColorName
print(colorNameToUse)

//bisa dimasukkan variabel tanpa nill juga
//untuk pengecekan dengan nill coalescing
//penggunaanya dengan menggunakan ??
//contoh

let defaultColorName        =   "Red"
var userDefinedColorName    :   String?
userDefinedColorName        =   "Green"
var colorNameToUse          =   userDefinedColorName ?? defaultColorName
print(colorNameToUse)