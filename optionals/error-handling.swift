//kurang lebih sama seperti di java

//contoh
//deklarasikan dulu fungsi mana yang sebagai thrown nya
func canThrowAnError() throws
{
    //
}

//contoh penggunaan
do
{
    try canThrowAnError()
    //ini kalo gak ada error
} 
catch
{
    ini kalo ada error
}


//kalau di swift untuk memulai nya pake do
//lalu untuk fungsi nya dicoba dengan try
//contoh

//ini deklarasi nya
func makeASandwich() throws
{

}

//ini mulai error handling nya
do 
{
    try makeASandwich()
    eatASandwich()   
} 
catch SandwichError.outOfCleanDishes 
{
    washDishes()    
}
catch SandwichError.missingIngredients(let ingredients)
{
    buyGroceries(ingredients)
}