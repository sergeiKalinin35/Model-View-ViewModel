//
//  TopTableViewCell.swift
//  Model-View-ViewModel
//
//  Created by Sergey on 22.05.2022.
//

import UIKit

class TopTableViewCell: UITableViewCell {
    
    
    @IBOutlet var imageTop: UIImageView!
    @IBOutlet var nameCourses: UILabel!
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
