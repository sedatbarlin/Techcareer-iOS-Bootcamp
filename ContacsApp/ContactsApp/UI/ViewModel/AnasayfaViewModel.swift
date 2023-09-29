//
//  AnasayfaViewModel.swift
//  ContactsApp
//
//  Created by Sedat on 26.09.2023.
//

import Foundation
import RxSwift

class AnasayfaViewModel{
    var krepo = KisilerDaoRepository()
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    
    init(){
        kisilerListesi = krepo.kisilerListesi
    }
    
    func ara(aramaKelimesi: String){
        krepo.ara(aramaKelimesi: aramaKelimesi)
    }
    
    func sil(kisi_id: Int){
        krepo.sil(kisi_id: kisi_id)
        kisileriYukle()
    }
    
    func kisileriYukle(){
        krepo.kisileriYukle()
    }
}
