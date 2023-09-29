//
//  KisilerDaoRepository.swift
//  ContactsApp
//
//  Created by Sedat on 26.09.2023.
//

import Foundation
import RxSwift

class KisilerDaoRepository{ //Database Acces Object
    
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    
    func kaydet(kisi_ad: String, kisi_tel: String){
        print("Kişi Kaydet: \(kisi_ad), \(kisi_tel)")
    }
    
    func guncelle(kisi_id: Int, kisi_ad: String, kisi_tel:String){
        print("Kişi Güncelle: \(kisi_id), \(kisi_ad), \(kisi_tel)")
    }
    
    func ara(aramaKelimesi: String){
        print("Kişi Ara: \(aramaKelimesi)")
    }
    
    func sil(kisi_id: Int){
        print("Kişi Sil: \(kisi_id)")
    }
    
    func kisileriYukle(){
        var liste = [Kisiler]()
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "111111")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "Sedat", kisi_tel: "222222")
        let k3 = Kisiler(kisi_id: 3, kisi_ad: "Mehmet", kisi_tel: "333333")
        let k4 = Kisiler(kisi_id: 4, kisi_ad: "Hasan", kisi_tel: "444444")
        liste.append(k1) //0.
        liste.append(k2) //1.
        liste.append(k3) //2.
        liste.append(k4) //3.
        kisilerListesi.onNext(liste)
    }
    
}
