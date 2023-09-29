//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by Sedat on 19.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func buttonAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel) { _ in
            print("iptal seçildi")
        }
        alert.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) { _ in
            print("tamam seçildi")
        }
        alert.addAction(tamamAction)
        
        self.present(alert, animated: true)
    }
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        let alert = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel) { _ in
            print("iptal seçildi")
        }
        alert.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) { _ in
            print("tamam seçildi")
        }
        alert.addAction(tamamAction)
        
        self.present(alert, animated: true)
    }
    
    @IBAction func butonOzelAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Sistem Giriş", message: "Mail ve Şifre Giriniz", preferredStyle: .alert)
        
        alert.addTextField{ textField in // 0.index
            textField.placeholder = "E-mail"
            textField.keyboardType = .emailAddress
        }
        alert.addTextField{ textField in // 1.index
            textField.placeholder = "Şifre"
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
        }
        let girisAction = UIAlertAction(title: "Giriş", style: .cancel) { _ in // 2.index
            let textfieldEmail = alert.textFields![0] as UITextField
            let textFieldSifre = alert.textFields![1] as UITextField
            
            if let email = textfieldEmail.text, let sifre = textFieldSifre.text {
                print("Email: \(email), Sifre: \(sifre)")
            }
        }
        alert.addAction(girisAction)
        self.present(alert, animated: true)
    }
    
}

