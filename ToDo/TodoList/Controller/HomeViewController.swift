//
//  HomeViewController.swift
//  TodoList
//
//  Created by Sedat on 30.09.2023.
//

import UIKit
import RxSwift

class HomeViewController: UIViewController {
	
	@IBOutlet weak var tableView: UITableView!
	@IBOutlet weak var searchBar: UISearchBar!
	
	var todos = [ToDo]()
	var selectedTodo : ToDo?
	
	var homepageViewModel = HomeViewModel()
	var detailViewModel = DetailViewModel()
	var refreshControl = UIRefreshControl()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		appearance()
		
		_ = homepageViewModel.todos.subscribe(onNext: { data in
			self.todos = data
			self.tableView.reloadData()
		})
	}
	
	@objc func refresh(){
		refreshControl.beginRefreshing()
		homepageViewModel.getAllTodo()
		tableView.reloadData()
		refreshControl.endRefreshing()
	}
	
	override func viewWillAppear(_ animated: Bool) {
		homepageViewModel.getAllTodo()
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "toDetail"{
			let destVC = segue.destination as! DetailViewController
			destVC.todo = selectedTodo
		}
		
	}
}

// MARK: - UISearchBar

extension HomeViewController: UISearchBarDelegate{
	func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
		homepageViewModel.searchTodo(title: searchText)
	}
}

// MARK: - UITableView
extension HomeViewController: UITableViewDelegate, UITableViewDataSource, ClickDone{
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return todos.count
	}
	
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ToDoCell
		cell.setup(indexPath: indexPath, todos: todos)
		cell.clickDone = self
		cell.indexPath = indexPath
		return cell
	}
	
	func clickedDone(indexPath: IndexPath) {
		let todo = todos[indexPath.row]
		if (todo.done == 1){
			todo.done = 0
			detailViewModel.updateTodo(todo: todo)
		}else{
			todo.done = 1
			detailViewModel.updateTodo(todo: todo)
		}
		tableView.reloadData()
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		selectedTodo = todos[indexPath.row]
		performSegue(withIdentifier: "toDetail", sender: nil)
	}

	func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
		let delete = UIContextualAction(style: .destructive, title: "Sil") { action, view, escap in
			self.homepageViewModel.deleteTodo(todo: self.todos[indexPath.row])
			tableView.reloadData()
		}
		let detail = UIContextualAction(style: .normal, title: "Detay") { action, view, escap in
			self.selectedTodo = self.todos[indexPath.row]
			self.performSegue(withIdentifier: "toDetail", sender: nil)
			tableView.reloadData()
		}
		
		let swipe = UISwipeActionsConfiguration(actions: [delete, detail])
		return swipe
	}
}

extension HomeViewController{
	func appearance(){
		tableView.refreshControl = refreshControl
		refreshControl.addTarget(self, action: #selector(refresh), for: .valueChanged)
		
		self.navigationItem.title = "TO DO"
		
		let appearance = UINavigationBarAppearance()
		appearance.titleTextAttributes = [.foregroundColor: UIColor.black,
										  .font: (UIFont(name: "Arial", size: 28))!]
		
		navigationController?.navigationBar.standardAppearance = appearance
		navigationController?.navigationBar.compactAppearance = appearance
		navigationController?.navigationBar.scrollEdgeAppearance = appearance
		
		tableView.delegate = self
		tableView.dataSource = self
		searchBar.delegate = self
	}
}
