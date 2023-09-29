//
//  ViewController.swift
//  MVVM-Kullanimi
//
//  Created by Sedat on 26.09.2023.
//

import UIKit
import RxSwift

class Anasayfa: UIViewController {
    
    @IBOutlet weak var sonucLabel: UILabel!
    @IBOutlet weak var sayi1TF: UITextField!
    @IBOutlet weak var sayi2TF: UITextField!
    
    var viewModel = AnasayfaViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Dinleme veya gözlemleme
        _ = viewModel.sonuc.subscribe(onNext:{ s in
            self.sonucLabel.text = s
        })
    }
    
    @IBAction func toplamaButton(_ sender: Any) {
        if let alinanSayi1 = sayi1TF.text, let alinanSayi2 = sayi2TF.text {
            viewModel.topla(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
        }
    }
    
    @IBAction func carpmaButton(_ sender: Any) {
        if let alinanSayi1 = sayi1TF.text, let alinanSayi2 = sayi2TF.text {
            viewModel.carp(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
        }
    }
    

}

