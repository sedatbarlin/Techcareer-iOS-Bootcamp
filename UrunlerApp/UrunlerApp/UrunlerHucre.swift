//
//  UrunlerHucre.swift
//  UrunlerApp
//
//  Created by Sedat on 24.09.2023.
//

import UIKit

protocol HucreProtocol{
    func sepeteEkleTiklandi(indexPath: IndexPath)
}

class UrunlerHucre: UITableViewCell {
    
    @IBOutlet weak var arkaplan: UIView!
    @IBOutlet weak var imageViewUrun: UIImageView!
    @IBOutlet weak var labelUrunAdi: UILabel!
    @IBOutlet weak var labelFiyat: UILabel!
    
    var hucreProtocol: HucreProtocol?
    var indexPath: IndexPath = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.sepeteEkleTiklandi(indexPath: indexPath)
    }
    

}
