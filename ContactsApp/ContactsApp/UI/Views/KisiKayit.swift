//
//  KisiKayit.swift
//  ContactsApp
//
//  Created by Sedat on 21.09.2023.
//

import UIKit

class KisiKayit: UIViewController {
    
    @IBOutlet weak var kisiAdTF: UITextField!
    @IBOutlet weak var kisiTelTF: UITextField!
    
    var viewModel = KisiKayitViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func kaydetButton(_ sender: UIButton) {
        if let ad = kisiAdTF.text, let tel = kisiTelTF.text {
            viewModel.kaydet(kisi_ad: ad, kisi_tel: tel)
        }
    }
}
