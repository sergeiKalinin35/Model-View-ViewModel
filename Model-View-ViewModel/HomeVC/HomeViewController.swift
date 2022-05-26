//
//  ViewController.swift
//  Model-View-ViewModel
//
//  Created by Sergey on 12.05.2022.
//

import UIKit

class HomeViewController: UITableViewController {
    
    
    @IBOutlet weak var tableViewTwo: UITableView!
    
    private var viewModel: HomeViewModelProtocol! {
        didSet {
            viewModel.fetchCourses {
                self.tableViewTwo.reloadData()
            }
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewTwo.rowHeight = 130
      viewModel = HomeViewModel()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! FullViewController
        detailVC.viewModel = sender as? FullViewModelProtocol
    }
    
    
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRows()
    }
 
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewTwo.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TopTableViewCell
        cell.viewModel = viewModel.cellViewModel(at: indexPath)
        
        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableViewTwo.deselectRow(at: indexPath, animated: true)
        let detailsViewModel = viewModel.viewModelForSelectedRow(at: indexPath)
        performSegue(withIdentifier: "ShowDetails", sender: detailsViewModel)
    }
    
}


