//
//  ViewController.swift
//  Homework4
//
//  Created by Sedat on 19.09.2023.
//

import UIKit

class Anasayfa: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func gitAButton(_ sender: Any) {
        performSegue(withIdentifier: "gitA", sender: nil)
    }
    
    
    @IBAction func gitXButton(_ sender: Any) {
        performSegue(withIdentifier: "gitX", sender: nil)
    }
    
    
    

}

