//
//  ToDoCell.swift
//  TodoList
//
//  Created by Sedat on 30.09.2023.
//

import UIKit

protocol ClickDone{
	func clickedDone(indexPath: IndexPath)
}

class ToDoCell: UITableViewCell {
	
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var okButton: UIButton!
	
	var clickDone: ClickDone?
	var indexPath: IndexPath?
	
	func setup(indexPath: IndexPath, todos: [ToDo]){
		let todo = todos[indexPath.row]
		titleLabel.text = todo.title
		if (todo.done == 1){
            okButton.backgroundColor = .green
			self.okButton.setTitle("Yapıldı", for: .normal)
		}
		else{
            okButton.backgroundColor = .darkGray
			self.okButton.setTitle("Yapılmadı", for: .normal)
			
		}
	}
	
	@IBAction func okAction(_ sender: Any) {
		clickDone?.clickedDone(indexPath: indexPath!)
	}
}
