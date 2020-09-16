//kayak fungsi closure js
//contoh

reversedNames               =   names.sorted(by: {(s1: String, s2: String) -> Bool in 
                                                    return s1 > s2
                                                })

//INFERRING TYPE FROM CONTEXT
//tidak perlu menulis tipe datanya
//contoh

reversedNames               =   names.sorted(by: {s1, s2 in return s1 > s2})



//implicit return from single expression closure
//langsung ke return tanpa ada return
//contoh

reversedNames               =   names.sorted(by: {s1, s2 in s1 > s2})


//shorthand argument names
//menghilangkan argumen
//contoh

reversedNames               =   names.sorted(by: {$0 > $1})


//operator method
//langsung ke method
//contoh          
reversedNames               =   names.sorted(by:>)