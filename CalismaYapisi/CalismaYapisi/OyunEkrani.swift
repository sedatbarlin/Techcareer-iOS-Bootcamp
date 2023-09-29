//
//  OyunEkrani.swift
//  CalismaYapisi
//
//  Created by Sedat on 14.09.2023.
//

import UIKit

class OyunEkrani: UIViewController {
    
    @IBOutlet weak var oyunEkraniLabel: UILabel!
    var kisiNesnesi: Kisiler?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        oyunEkraniLabel.text = "Merhaba"

        if let k = kisiNesnesi {
            oyunEkraniLabel.text = "\(k.ad!) - \(k.yas) - "
        }
        
    }
    
    @IBAction func geriButton(_ sender: Any) {
        navigationController?.popViewController(animated: true) //bir önceki sayfaya döner
        navigationController?.popToRootViewController(animated: true) //var olan anasayfaya döner
        
    }
    
    @IBAction func bittiButton(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
    
    
}
