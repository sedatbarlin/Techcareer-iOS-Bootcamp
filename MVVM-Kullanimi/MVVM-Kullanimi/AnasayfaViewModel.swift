//
//  AnasayfaViewModel.swift
//  MVVM-Kullanimi
//
//  Created by Sedat on 26.09.2023.
//

import Foundation
import RxSwift

class AnasayfaViewModel{
    //ortak yönettiğim değer nedir uygulama çalıştığında
    var sonuc = BehaviorSubject<String>(value: "0")
    var mrepo = MatematikRepository()
    
    init(){
        sonuc = mrepo.sonuc //bağlantı
    }
    
    func topla(alinanSayi1: String, alinanSayi2: String){
        mrepo.topla(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
    }
    
    func carp(alinanSayi1: String, alinanSayi2: String){
        mrepo.carp(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
    }
}
