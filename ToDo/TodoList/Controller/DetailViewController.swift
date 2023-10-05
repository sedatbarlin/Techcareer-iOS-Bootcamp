//
//  DetailViewController.swift
//  TodoList
//
//  Created by Sedat on 30.09.2023.
//

import UIKit

class DetailViewController: UIViewController {
	
	@IBOutlet weak var todoTextField: UITextField!
	
	var todo: ToDo?
	var detailTodoViewModel = DetailViewModel()
    
	override func viewDidLoad() {
		super.viewDidLoad()
		appearance()
	}
	
	@IBAction func saveAction(_ sender: Any) {
		if todoTextField.text != ""{
			todo?.title = todoTextField.text!
			detailTodoViewModel.updateTodo(todo: todo!)
			navigationController?.popViewController(animated: true)
		}
	}

	func appearance(){
		if let todo = todo{
			if todo.done == 1{
                
			}else{
				
			}
			todoTextField.text = todo.title
		}
		
		self.navigationItem.title = "Detay"
		let appearance = UINavigationBarAppearance()
		appearance.titleTextAttributes = [.foregroundColor: UIColor.black,
										  .font: (UIFont(name: "Arial", size: 18))!]
		navigationController?.navigationBar.standardAppearance = appearance
		navigationController?.navigationBar.compactAppearance = appearance
		navigationController?.navigationBar.scrollEdgeAppearance = appearance
	}
	
}
