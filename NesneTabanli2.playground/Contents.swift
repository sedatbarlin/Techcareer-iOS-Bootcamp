import UIKit

class Ev {
    var pencereSayisi:Int?
    init(pencereSayisi: Int) {
        self.pencereSayisi = pencereSayisi
    }
}

class Saray: Ev {
    var kuleSayisi:Int?
    init(kuleSayisi: Int, pencereSayisi:Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
}

class Villa: Ev {
    var garajVarmi:Bool?
    init(garajVarmi: Bool, pencereSayisi:Int) {
        self.garajVarmi = garajVarmi
        super.init(pencereSayisi: pencereSayisi)
    }
}

let topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 300)
let bogazVilla = Villa(garajVarmi: true, pencereSayisi: 50)

print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)
print(bogazVilla.garajVarmi!)
print(bogazVilla.pencereSayisi!)


//Upcasting / Saray > Ev
let ev = Saray(kuleSayisi: 3, pencereSayisi: 100) as Ev

//Downcasting / Ev > Saray
let sarat = Ev(pencereSayisi: 40) as? Saray //as! Saray da kullanılabilir

//Tip Kontrol
if ev is Ev { //instanceOf diğer dillerde olabilir
    print("Nesne Ev sınıfından türetilmiştir")
} else {
    print("Nesne Ev sınıfından türetilmemiştir")
}


//Override Kullanımı
class Hayvan {
    func sesCikar(){
        print("Sesim Yok")
    }
}

class Memeli: Hayvan {
    
}

class Kedi: Memeli {
    override func sesCikar() {
        print("miyavv")
    }
}

class Kopek: Memeli {
    override func sesCikar() {
        print("havhavv")
    }
}

let hayvan = Hayvan()
let memeli = Memeli()
let kedi = Kedi()
let kopek = Kopek()

hayvan.sesCikar() //kalıtım yok, kendi metoduna erişti
memeli.sesCikar() //kalıtım var, üst sınıfın metoduan erişti
kedi.sesCikar()   //kalıtım var, kendi metoduna erişti
kopek.sesCikar()  //kalıtım var, kendi metoduna erişti
