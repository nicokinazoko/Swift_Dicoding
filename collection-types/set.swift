//SET
//mirip sama array
//harus hashable
//indeksnya tidak selalu sama


//membuat set kosong
var letters                     =   Set()
print("letters is of type Set with \(letters.count) items")

letters.insert("a")
letters                         =   []
print(letters)

//membuat set dengan array literal
var favoriteGenres              :   Set<String>     =   ["Rock", "Classical", "Hip Hop"]
print(favoriteGenres) //output : ["Hip Hop", "Rock", "Classical"]

//contoh lain
var favoriteGenres              :   Set             =   ["Rock", "Classical", "Hip Hop"]
print(favoriteGenres) //output : ["Rock", "Hip Hop", "Classical"]


//ACCESSING AND MODIFYING SET
//count
print("I have \(favoriteGenres.count) favorite music genres") //output : I have 3 favorite music genres

//isEmpty
if favoriteGenres.isEmpty
{
    print("As far as music goes, I'm not picky")
}
else
{
    print("I have particular music preferences")   
}
//output : I have particular music preferences

//insert
favoriteGenres.insert("Jazz")
print(favoriteGenres) //output : ["Classical", "Jazz", "Hip Hop", "Rock"]

//remove
if let removedGenre     =   favoriteGenres.remove("Rock")
{
    print("\(removedGenre)? I'm over it")
}
else
{
    print("I never much cared for that")
}
//output : Rock? I'm over it


//contains
if favoriteGenres.contains("Funk")
{
    print("I get up on the good foot.")
}
else
{
    print("It's too funky in here")
}
//output : It's too funky in here


//cara output semua data
for genre in favoriteGenres 
{
    print("\(genre)")
}
//output
// Classical
// Jazz
// Hip Hop


//supaya bisa urut
//pake sorted()
for genre in favoriteGenres.sorted()
{
    print("\(genre)")
}