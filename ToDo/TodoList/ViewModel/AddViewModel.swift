//
//  AddTodoViewModel.swift
//  TodoList
//
//  Created by Sedat on 2.10.2023.
//

import Foundation
import RxSwift

class AddViewModel{
	var dataRepo = DoaRepository()
	
	func addTodo(todo: ToDo){
		dataRepo.addTodo(todo: todo)
	}
}
