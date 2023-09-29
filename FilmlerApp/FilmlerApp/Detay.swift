//
//  Detay.swift
//  FilmlerApp
//
//  Created by Sedat on 24.09.2023.
//

import UIKit

class Detay: UIViewController {

    @IBOutlet weak var labelFilm: UILabel!
    @IBOutlet weak var imageViewFilm: UIImageView!
    @IBOutlet weak var labelFiyat: UILabel!
    
    var film: Filmler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let f = film {
            labelFilm.text = f.ad
            imageViewFilm.image = UIImage(named: f.resim!)
            labelFiyat.text = "\(f.fiyat!) ₺"
        }
        
    }
    
    

}
