import UIKit

class Urunler {
    var renk:String?
    var fiyat:Int?
    var stokDurum:Bool?
    init(){
        print("Boş constructor")
    }
    
    init(renk:String, fiyat:Int, stokDurum:Bool){
        self.renk = renk //shadowing - gölgeleme
        self.fiyat = fiyat
        self.stokDurum = stokDurum
        print("Dolu constructor")
        // self, Kotlin'de "this"
    }
    
    func satisBaslat(){ //side effect / yan etki - bir fonksiyonla bir değeri değiştirmek demek
        stokDurum = true
    }
    func satisDurdur(){
        stokDurum = false
    }
    
    func fiyatArtis(kacFiyat: Int){
        fiyat! += kacFiyat
    }
    
    func fiyatAzalis(kacFiyat: Int){
        fiyat! -= kacFiyat
    }
    
    func bilgiAl(){
        print("-------------------")
        print("renk       : \(renk!)")
        print("fiyat      : \(fiyat!)₺")
        print("stok durum : \(stokDurum!)")
    }
}

// nesne olusturma
let tv = Urunler(renk: "beyaz", fiyat: 1000, stokDurum: true)
tv.bilgiAl()
// deger atama
tv.renk = "kırmızı"
tv.fiyat = 8000
tv.stokDurum = true

//deger okuma
tv.bilgiAl()
tv.satisDurdur()
tv.bilgiAl()
tv.satisBaslat()
tv.bilgiAl()
tv.fiyatArtis(kacFiyat: 1000)
tv.bilgiAl()
tv.fiyatAzalis(kacFiyat: 5000)
tv.bilgiAl()


let saat = Urunler()
saat.renk = "sarı"
saat.fiyat = 5000
saat.stokDurum = false

saat.bilgiAl()
saat.satisBaslat()
saat.bilgiAl()
saat.fiyatArtis(kacFiyat: 8000)
saat.bilgiAl()
saat.fiyatAzalis(kacFiyat: 1000)
saat.bilgiAl()
