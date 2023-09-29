//
//  KisiDetay.swift
//  ContactsApp
//
//  Created by Sedat on 21.09.2023.
//

import UIKit

class KisiDetay: UIViewController {
    
    @IBOutlet weak var kisiAdTF: UITextField!
    @IBOutlet weak var kisiTelTF: UITextField!
    var kisi: Kisiler?
    var viewModel = KisiDetayViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let k = kisi {
            kisiAdTF.text = k.kisi_ad
            kisiTelTF.text = k.kisi_tel
        }
    }
    
    @IBAction func guncelleButton(_ sender: UIButton) {
        if let ad = kisiAdTF.text, let tel = kisiTelTF.text, let k = kisi {
            viewModel.guncelle(kisi_id: k.kisi_id!, kisi_ad: ad, kisi_tel: tel)
        }
    }
}
