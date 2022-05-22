//
//  ViewController.swift
//  Model-View-ViewModel
//
//  Created by Sergey on 12.05.2022.
//

import UIKit

class HomeViewController: UITableViewController {
    
    
    @IBOutlet var tableViewTwo: UITableView!
    
  //  var courses: [Course] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewTwo.rowHeight = 130
      
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
 
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewTwo.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TopTableViewCell
        
        
        
        return cell
    }
    
//
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//    }
    
}


