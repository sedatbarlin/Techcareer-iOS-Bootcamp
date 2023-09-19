//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Sedat on 14.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var anasayfaLabel: UILabel!
   
    
    var sayac = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        anasayfaLabel.text = String(sayac)
    }

    @IBAction func tiklaButton(_ sender: Any) {
        sayac += 1
        anasayfaLabel.text = String(sayac)
        if sayac == 5 {
           // performSegue(withIdentifier: "oyunEkraninaGecis", sender: "merhaba")
        }
    }
    
    @IBAction func baslaButton(_ sender: Any) {
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: "merhaba")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { //geçiş takibi yapmak için
        print("prepare metodu çalıştı")
        
        if segue.identifier == "oyunEkraninaGecis" {
            print("Oyun Ekranına Gecis Calisti")
            
            if let veri = sender as? Kisiler { //Any(supreeclass) > String (subclass)
                print("veri: \(veri)")
                
                let gidilecekVC = segue.destination as! OyunEkrani
                //UIViewController (superclass) > OyunEkrani
                gidilecekVC.
            }
        }
    }
    
}

