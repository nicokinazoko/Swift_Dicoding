//perbandingan sama seperti bahasa lain

//perbandingan tuple
//alurnya yaitu dibandingkan yang kiri dulu, lalu ke kanan
//jika elemen pertama tuple sudah ada perbandingan, maka langsung mengeluarkan output
//jika elemen pertama sama, maka akan dibandingkan dengan elemen kedua
//contoh
print((1, "zebra") < (2, "apple")) //output : true karena yang 1 < 2 dan zebra tidak sama dengan apple

print((3, "apple") < (3, "bird")) //output : true karena 3 < 4 dan apple kurang dari bird

print((4, "dog") == (4, "dog")) //output : true karena 4 == 4 dan dog sama dengan dog

//contoh lain
print(("blue", -1) < ("purple", 1)) //output : true karena -1 < 1
print(("blue", false) < ("purple", true)) //error karena boolean tidak bisa dibandingkan


