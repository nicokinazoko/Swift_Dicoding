// Subscript memungkinkan untuk membuat instance query dari tipe data dengan menuliskan salah satu nilai atau lebih dalam tanda kurung setelah nama instance.
// ada get dan set nya

//contoh syntax nya

subscript(index: Int) −> Int 
{
   get 
   {
       // Kembalikan nilai subskrip yang sesuai di sini.
   }
 
   set(newValue) 
   {
       // Lakukan tindakan pengaturan yang cocok di sini.
   }
}

// kalo yang cuma read-only dihilangkan get dan set nya
//contoh
subscript(index: Int) -> Int 
{
       // Kembalikan nilai subskrip yang sesuai di sini.
}


//contoh penggunaan
struct TimesTable 
{
    let multiplier: Int
    subscript(index: Int) -> Int 
    {
        return multiplier * index
    }
}
 
let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")
// Prints "six times three is 18"

// subscript usage
// penggunaan subscript tergantung dari konteksnya 
// contohnya untuk pengambilan data dictionary
//contoh
var numberOfLegs            =   ["spider": 8, "ant": 6, "cat": 4]
numberOfLegs["bird"]        =   2
print(numberOfLegs)
// output: ["spider": 8, "cat": 4, "ant": 6, "bird": 2]



//subcript option
//contohnya

struct Matrix 
{
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) 
    {
        self.rows                   =   rows
        self.columns                =   columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    func indexIsValid(row: Int, column: Int) -> Bool 
    {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Double 
    {
        get 
        {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set 
        {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column]  =   newValue
        }
    }
}

var matrix              =    Matrix(rows: 2, columns: 2)

matrix[0, 1]            =   1.5
matrix[1, 0]            =   3.2


// type Subscript
// bisa juga dipanggil diri sendiri
// contoh
enum Planet: Int 
{
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet 
    {
        return Planet(rawValue: n)!
    }
}
let mars = Planet[4]
print(mars)