//
//  ViewController.swift
//  Date&TimePicker
//
//  Created by Sedat on 19.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var saatTF: UITextField!
    @IBOutlet weak var tarihTF: UITextField!
    
    var timePicker: UIDatePicker?
    var datePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        saatTF.inputView = timePicker
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        tarihTF.inputView = datePicker
        
        if #available(iOS 13.4, *){
            timePicker?.preferredDatePickerStyle = .wheels
            datePicker?.preferredDatePickerStyle = .wheels
        }
        
        let dokunmaAlgilama = UITapGestureRecognizer(target: self, action: #selector(dokunmaAlgilamaMetod))
        view.addGestureRecognizer(dokunmaAlgilama)
        timePicker?.addTarget(self, action: #selector(saatGoster(uiDatePicker:)), for: .valueChanged)
        datePicker?.addTarget(self, action: #selector(tarihGoster(uiDatePicker:)), for: .valueChanged)
    }
    
    @objc func dokunmaAlgilamaMetod(){
        print("Ekrana Dokunuldu")
        view.endEditing(true)
    }
    
    @objc func saatGoster(uiDatePicker: UIDatePicker){
        let format = DateFormatter()
        format.dateFormat = "HH:mm"
        let alinanSaat = format.string(from: uiDatePicker.date)
        saatTF.text = alinanSaat
    }
    
    @objc func tarihGoster(uiDatePicker: UIDatePicker){
        let format = DateFormatter()
        format.dateFormat = "MM/dd/yyy"
        let alinantarih = format.string(from: uiDatePicker.date)
        tarihTF.text = alinantarih
    }


}

