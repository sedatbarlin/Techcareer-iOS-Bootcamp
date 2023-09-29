//
//  HomeViewController.swift
//  Getir
//
//  Created by Sedat on 25.09.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var categoryList = [Categories]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        let c1 = Categories(categoryId: 1, categoryName: "Yeni Ürünler", categoryImage: "yeniUrunler")
        let c2 = Categories(categoryId: 2, categoryName: "İndirimler", categoryImage: "indirimler")
        let c3 = Categories(categoryId: 3, categoryName: "Bana Özel", categoryImage: "banaOzel")
        let c4 = Categories(categoryId: 4, categoryName: "Su & İçecek", categoryImage: "icecek")
        let c5 = Categories(categoryId: 5, categoryName: "Meyve & Sebze", categoryImage: "meyve")
        let c6 = Categories(categoryId: 6, categoryName: "Fırından", categoryImage: "firindan")
        let c7 = Categories(categoryId: 7, categoryName: "Temel Gıda", categoryImage: "temelGida")
        let c8 = Categories(categoryId: 8, categoryName: "Atıştırmalık", categoryImage: "atistirmalik")
        let c9 = Categories(categoryId: 9, categoryName: "Dondurma", categoryImage: "dondurma")
        let c10 = Categories(categoryId: 10, categoryName: "Süt Ürünleri", categoryImage: "sut")
        let c11 = Categories(categoryId: 11, categoryName: "Kahvaltılık", categoryImage: "kahvaltilik")
        let c12 = Categories(categoryId: 12, categoryName: "Yiyecek", categoryImage: "yiyecek")
        let c13 = Categories(categoryId: 13, categoryName: "Fit & Form", categoryImage: "fitForm")
        let c14 = Categories(categoryId: 14, categoryName: "Kişisel Bakım", categoryImage: "kisiselBakim")
        let c15 = Categories(categoryId: 15, categoryName: "Ev Bakım", categoryImage: "evBakim")
        let c16 = Categories(categoryId: 16, categoryName: "Ev & Yaşam", categoryImage: "evYasam")
        let c17 = Categories(categoryId: 17, categoryName: "Teknoloji", categoryImage: "teknoloji")
        let c18 = Categories(categoryId: 18, categoryName: "Evcil Hayvan", categoryImage: "evcilHayvan")
        let c19 = Categories(categoryId: 19, categoryName: "Bebek", categoryImage: "bebek")
        let c20 = Categories(categoryId: 20, categoryName: "Cinsel Sağlık", categoryImage: "cinselSaglik")
        
        categoryList.append(c1)
        categoryList.append(c2)
        categoryList.append(c3)
        categoryList.append(c4)
        categoryList.append(c5)
        categoryList.append(c6)
        categoryList.append(c7)
        categoryList.append(c8)
        categoryList.append(c9)
        categoryList.append(c10)
        categoryList.append(c11)
        categoryList.append(c12)
        categoryList.append(c13)
        categoryList.append(c14)
        categoryList.append(c15)
        categoryList.append(c16)
        categoryList.append(c17)
        categoryList.append(c18)
        categoryList.append(c19)
        categoryList.append(c20)
        
        let tasarim = UICollectionViewFlowLayout()
            tasarim.sectionInset = UIEdgeInsets(top: 10, left: 12, bottom: 5, right: 10)
            tasarim.minimumInteritemSpacing = 6
            tasarim.minimumLineSpacing = 5
        let genislik = collectionView.frame.size.width
        let yatayUzunluk = (genislik - 10) / 5
        tasarim.itemSize = CGSize(width: yatayUzunluk, height: yatayUzunluk * 1.2)
        collectionView.collectionViewLayout = tasarim
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryList.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let category = categoryList[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCollectionViewCell
        cell.categoryImageView.image = UIImage(named: category.categoryImage!)
        cell.categoryNameLabel.text = category.categoryName!
        return cell
    }
    
    
}
