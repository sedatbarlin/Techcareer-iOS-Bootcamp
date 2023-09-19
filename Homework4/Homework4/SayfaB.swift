//
//  SayfaB.swift
//  Homework4
//
//  Created by Sedat on 19.09.2023.
//

import UIKit

class SayfaB: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func gitYButton(_ sender: Any) {
        performSegue(withIdentifier: "gitY", sender: nil)
    }
    

}
