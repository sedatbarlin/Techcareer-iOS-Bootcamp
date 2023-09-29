//
//  FilmlerHucre.swift
//  FilmlerApp
//
//  Created by Sedat on 24.09.2023.
//

import UIKit

protocol hucreProtocol{
    func sepeteEkleTikla(indexPath: IndexPath)
}

class FilmlerHucre: UICollectionViewCell {
    
    
    @IBOutlet weak var labelFiyat: UILabel!
    @IBOutlet weak var imageViewResim: UIImageView!
    
    var hucreProtocol: hucreProtocol?
    var indexPath: IndexPath?
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.sepeteEkleTikla(indexPath: indexPath!)
    }
}
