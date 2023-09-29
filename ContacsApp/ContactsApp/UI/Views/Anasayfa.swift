//
//  ViewController.swift
//  ContactsApp
//
//  Created by Sedat on 21.09.2023.
//

import UIKit
import RxSwift

class Anasayfa: UIViewController{
    
    @IBOutlet weak var kisilerTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var kisilerListesi = [Kisiler]()
    var viewModel = AnasayfaViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self //anasayfa > UISearchBarDelegate
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        _ = viewModel.kisilerListesi.subscribe(onNext: { liste in
            self.kisilerListesi = liste
            self.kisilerTableView.reloadData()
        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        viewModel.kisileriYukle()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay"{
            if let kisi = sender as? Kisiler{
                let gidilecekVC = segue.destination as! KisiDetay
                gidilecekVC.kisi = kisi
            }
        }
    }
}

extension Anasayfa: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        viewModel.ara(aramaKelimesi: searchText)
    }

}

extension Anasayfa: UITableViewDelegate, UITableViewDataSource{ //kaç tane değer
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListesi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { //0,1,2 kisi listesi kadar çalışacak
        let hucre = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre") as! KisilerHucre
        let kisi = kisilerListesi[indexPath.row]
        hucre.kisiAdLabel.text = kisi.kisi_ad
        hucre.kisiTelLabel.text = kisi.kisi_tel
        return hucre
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let kisi = kisilerListesi[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: kisi)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let silAction = UIContextualAction(style: .destructive, title: "Sil") { contextualAction, view, bool in
            let kisi = self.kisilerListesi[indexPath.row]
            let alert = UIAlertController(title: "Silme İşlemi", message: "\(kisi.kisi_ad!) kişisi silinsin mi?", preferredStyle: .alert)
            let iptalAction = UIAlertAction(title: "iptal", style: .cancel)
            alert.addAction(iptalAction)
            let evetAction = UIAlertAction(title: "evet", style: .destructive) { action in
                self.viewModel.sil(kisi_id: kisi.kisi_id!)
            }
            alert.addAction(evetAction)
            self.present(alert, animated: true)
            
            
        }
        return UISwipeActionsConfiguration(actions: [silAction])
    }
    
}
