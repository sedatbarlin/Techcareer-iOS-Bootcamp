//
//  SayfaY.swift
//  Homework4
//
//  Created by Sedat on 19.09.2023.
//

import UIKit

class SayfaY: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func anasayfaButton(_ sender: Any) {
        performSegue(withIdentifier: "gitHome", sender: nil)
    }
    
    
    
}
