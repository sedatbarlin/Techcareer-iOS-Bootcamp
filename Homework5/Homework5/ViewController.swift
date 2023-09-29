//
//  ViewController.swift
//  Homework5
//
//  Created by Sedat on 19.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var strLabel = ""
    var resultNum = 0
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        strLabel += (sender.titleLabel?.text)!
        resultLabel.text = strLabel
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        if !strLabel.isEmpty && !strLabel.hasSuffix("+"){
            strLabel += (sender.titleLabel?.text)!
            resultLabel.text = strLabel
        }
    }
    
    @IBAction func equalButton(_ sender: UIButton) {
        add(totalStr: strLabel)
        strLabel += " = "
        resultLabel.text = strLabel + " " + String(resultNum)
        strLabel = ""
        resultNum = 0
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        resultLabel.text = "0"
        resultNum = 0
    }
    
    func add(totalStr: String){
        var arr = totalStr.components(separatedBy: "+")
        print(arr)
        for i in arr {
            var k = Int(i)
            resultNum += k!
        }
        resultLabel.text = strLabel + " " + String(resultNum)
    }
}
