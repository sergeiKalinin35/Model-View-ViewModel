//
//  TopTableViewCell.swift
//  Model-View-ViewModel
//
//  Created by Sergey on 22.05.2022.
//

import UIKit

class TopTableViewCell: UITableViewCell {
    
    var viewModel:TopCellViewModelProtocol! {
        didSet{
            var content = defaultContentConfiguration()
            content.text = viewModel.courseName
            guard let imageData = viewModel.imageData else { return }
            content.image = UIImage(data: imageData)
            contentConfiguration = content
        }
        
    }
    
    
    
 //   @IBOutlet var imageTop: UIImageView!
  //  @IBOutlet var nameCourses: UILabel!
    
    
    
    
    
    


}
