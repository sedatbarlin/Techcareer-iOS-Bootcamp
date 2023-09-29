//
//  SayfaX.swift
//  Homework4
//
//  Created by Sedat on 19.09.2023.
//

import UIKit

class SayfaX: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func gitYButton(_ sender: Any) {
        performSegue(withIdentifier: "gitY", sender: nil)
    }
    

}
