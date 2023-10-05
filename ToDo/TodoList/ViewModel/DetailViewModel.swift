//
//  DetailTodoViewModel.swift
//  TodoList
//
//  Created by Sedat on 2.10.2023.
//

import Foundation
import RxSwift

class DetailViewModel{
	var dataRepo = DoaRepository()
	
	func updateTodo(todo: ToDo){
		dataRepo.updateTodo(todo: todo)
	}
}
