import UIKit

// Karşılaştırma Operatörleri
var a = 40
var b = 50
var x = 90
var y = 80

print("a == b: \(a == b)")
print("a != b: \(a != b)")
print("a > b: \(a > b)")
print("a >= b: \(a >= b)")
print("a < b: \(a <= b)")
print("a <= b: \(a <= b)")

print("a > b || x > y : \(a > b || x > y)") // OR   - false || false : false, diğer durumlar true
print("a > b && x > y : \(a > b && x > y)") // AND  - true && true : true, diğer durumlar false


// if kullanımı
var yas = 17
var isim = "ahmet"

if yas >= 18 {
    print("resitsiniz")
} else {
    print("resit degilsiniz")
}

if isim == "ahmet" {
    print("Merhaba Ahmet")
} else if isim == "mehmet" {
    print("Merhaba Mehmet")
} else{
    print("Tanınmayan Kişi")
}


var ka = "admin"
var s = 123456

if ka == "admin" && s == 123456 {
    print("Hosgeldiniz")
} else{
    print("Hatali Giris")
}

var sonuc = 10
if sonuc == 10 || sonuc == 20 {
    print("Sonuc 10 veya 20")
} else{
    print("Sonuc 10 veya 20 degil")
}


var z = 10
var t = 20

z == t ? print("Esit") : print("Esit Degil")

//Switch
//Kotlin(when)

var gun = 7
switch gun {
    case 1: print("pazartesi")
    case 2: print("sali")
    case 3: print("carsamba")
    case 4: print("persembe")
    case 5: print("cuma")
    case 6: print("cumartesi")
    case 7: print("pazar")
    default: print("Boyle bir gun yok")
}

//Loop (Donguler)
for i in 1...3 { // Kotlin'de 1..3 kullanılır - for each
    print("Dongu 1: \(i)")
}

for k in stride(from: 10, through: 20, by: 5) { // 5 er artisla yaz
    print("Dongu 2: \(k)")
}

for l in stride(from: 20, through: 10, by: -5) { // 5 er eksiltme
    print("Dongu 3: \(l)")
}

// while
var sayac = 1
while sayac < 4 { //<=3 de yazılabilir
    print("Dongu 4: \(sayac)")
    sayac += 1
}


for i in 1...5 {
    if i == 3 {
        break
    }
    print("Dongu 5: \(i)")
}

for i in 1...5 {
    if i == 3 {
        continue
    }
    print("Dongu 5: \(i)")
}
