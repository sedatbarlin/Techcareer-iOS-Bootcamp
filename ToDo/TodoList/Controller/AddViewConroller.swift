//
//  AddViewController.swift
//  TodoList
//
//  Created by Sedat on 1.10.2023.
//

import UIKit

class AddViewConroller: UIViewController {

	@IBOutlet weak var todoTextField: UITextField!
	
	var addTodoViewModel = AddViewModel()
	
	override func viewDidLoad() {
        super.viewDidLoad()
		appearance()
    }

	@IBAction func addAction(_ sender: Any) {
		if todoTextField.text?.count != 0 {
			addTodoViewModel.addTodo(todo: ToDo( title: todoTextField.text!, done: 0))
			navigationController?.popViewController(animated: true)
		}
		else{
			print("Error")
		}
	}
	
	func appearance(){

		self.navigationItem.title = "Yeni"
		
		let appearance = UINavigationBarAppearance()
		appearance.titleTextAttributes = [.foregroundColor: UIColor.black,
										  .font: (UIFont(name: "Arial", size: 18))!]
		
		navigationController?.navigationBar.standardAppearance = appearance
		navigationController?.navigationBar.compactAppearance = appearance
		navigationController?.navigationBar.scrollEdgeAppearance = appearance
	}
}
