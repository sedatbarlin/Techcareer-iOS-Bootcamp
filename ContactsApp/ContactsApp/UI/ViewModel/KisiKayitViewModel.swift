//
//  KisiKayitViewModel.swift
//  ContactsApp
//
//  Created by Sedat on 26.09.2023.
//

import Foundation

class KisiKayitViewModel{
    var krepo = KisilerDaoRepository()
    
    func kaydet(kisi_ad: String, kisi_tel: String){
        krepo.kaydet(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
}
