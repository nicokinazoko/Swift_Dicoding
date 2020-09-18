//penggunaan kayak barcode atau nomor seri produk

//contoh
enum Barcode
{
    case upc(Int,Int,Int,Int)
    case qrCode(String)
}

//contoh value nya
var productBarcode              =   Barcode.upc(1,24984,13758,9)

productBarcode                  =   .qrCode("DICODING INDONESIA")

//contoh hasilnya
switch productBarcode
{
    case .upc(let numberSystem,let manufacturer, let product, let check):
        print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
    case .qrCode(let productCode):
        print("QR Code : \(productCode)")
}
//output : QR Code : DICODING INDONESIA

//jika associated values dijadikan sebagai konstanta
switch productBarcode 
{
    case let .upc(numberSystem, manufacturer, product, check):
        print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
    case let .qrCode(productCode):
        print("QR code: \(productCode).")
}
// Prints "QR code: DICODING INDONESIA."