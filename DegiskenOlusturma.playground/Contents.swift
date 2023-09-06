import UIKit

var ogrenciAdi = "Ahmet"
var ogrenciYas = 18
var ogrenciBoy = 1.72
var ogrenciBasHarf = "A"
var ogrenciDevamEdiyorMu = true

print(ogrenciAdi)
print(ogrenciYas)
print(ogrenciBoy)
print(ogrenciBasHarf)
print(ogrenciDevamEdiyorMu)

var urun_id:Int = 3416
var urun_adi:String = "Kol Saati"
var urun_adedi:Int = 100
var urun_fiyat:Double = 149.99
var urun_tedarikci:String = "Rolex"

print("Urun ID: \(urun_id)")
print("Urun Adi: \(urun_adi)")
print("Urun Adedi: \(urun_adedi)")
print("Urun Fiyati: \(urun_fiyat)")
print("Urun Tedarikcisi: \(urun_tedarikci)")


// Constant (Sabitler)
// Swift (let) - Kotlin (val) - Dart,Java (final) - const
let numara = 100
print(numara)

// Tür Dönüşümü (Type Casting)

//Sayısaldan Sayısala
var i = 42
var d = 55.45

var sonuc1 = Double(i)
var sonuc2 = Int(d)
print(sonuc1)
print(sonuc2)  // yuvarlama yok, tam kısmını alır

//Sayısaldan Metine
var sonuc3 = String(i) //"42"
var sonuc4 = String(d) //"55.45"
print(sonuc3)
print(sonuc4)

//Metinden Sayısala
var yazi = "34t"
if let sonuc5 = Int(yazi) { //optional binding
    print(sonuc5)
}else {
    print("Donusum Hatasi")
}




