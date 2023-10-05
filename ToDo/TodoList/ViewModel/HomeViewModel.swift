//
//  TodoViewModel.swift
//  TodoList
//
//  Created by Sedat on 30.09.2023.
//

import Foundation
import RxSwift

class HomeViewModel{
	var todos = BehaviorSubject<[ToDo]>(value: [ToDo]())
	var dataRepo = DoaRepository()
	
	init(){
		dataRepo.databaseCopy()
		todos = dataRepo.todos
	}
	
	func deleteTodo(todo: ToDo){
		dataRepo.deleteTodo(todo: todo)
		getAllTodo()
	}
	
	func searchTodo(title: String){
		dataRepo.searchTodo(title: title)
	}
	
	func getAllTodo(){
		dataRepo.getAllTodo()
	}
}
