//TUPLES
//gunanya untuk menyimpan sekumpulan data tanpa harus memiliki tipe data yang sama

//contoh
let http404Error                =   (404, "Error not Found")

let (statusCode, statusMessage) =   http404Error;
print("The status code is \(statusCode)") //output : The status code is 404
print("The status code is \(statusMessage)") //output : The status code is Error not Found

//ada cara untuk menghiraukan tuple
//contoh
let (justTheStatusCode,_)       =   http404Error
print("The status code is \(justTheStatusCode)")   //output : The status code is 404

//bisa juga dengan mendeklarasikan nama dalam tuple
//contoh
let http200Status               =   (statusCode :   200, description    :   "OK")

print("The status code is \(http200Status)") //output : The status code is (statusCode: 200, description: "OK")

print("The status code is \(http200Status.statusCode)") //output : The status code is 200
print("The status code is \(http200Status.description)") //output : The status code is OK