//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by Sedat on 17.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sonucLabel: UILabel!
    @IBOutlet weak var girdiTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var switchLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if mySwitch.isOn {
            switchLabel.text = "Acik"
        }else {
            switchLabel.text = "Kapali"
        }
    }
    
    @IBAction func mutluButton(_ sender: Any) {
        imageView.image = UIImage(named: "mutlu")
    }
    
    @IBAction func uzgunButton(_ sender: Any) {
        imageView.image = UIImage(named: "uzgun")
    }
    
    @IBAction func okuButton(_ sender: Any) {
        if let alinanVeri = girdiTextField.text {
            sonucLabel.text = alinanVeri
        }
    }
    
    @IBAction func gosterButton(_ sender: Any) {
        print("Switch Durum: \(mySwitch.isOn)")
    }
    
    
    @IBAction func switchDegisim(_ sender: Any) {
        if mySwitch.isOn {
            switchLabel.text = "Acik"
        }else {
            switchLabel.text = "Kapali"
        }
    }
    
}

