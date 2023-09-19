//
//  SayfaA.swift
//  Homework4
//
//  Created by Sedat on 19.09.2023.
//

import UIKit

class SayfaA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func gitBButton(_ sender: Any) {
        performSegue(withIdentifier: "gitB", sender: nil)
    }
    
}
