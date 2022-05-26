//
//  FullViewController.swift
//  Model-View-ViewModel
//
//  Created by Sergey on 22.05.2022.
//

import UIKit

class FullViewController: UIViewController {
    
    @IBOutlet private weak var nameFull: UILabel!
    @IBOutlet private weak var imageFull: UIImageView!
    @IBOutlet private weak var numberLessons: UILabel!
    @IBOutlet private weak var numberTests: UILabel!
    @IBOutlet private weak var heart: UIButton!
    
    var viewModel: FullViewModelProtocol! {
        didSet {
            self.nameFull.text = viewModel.courseName
            self.numberLessons.text = viewModel.numberOfLessons
            self.numberTests.text = viewModel.numberOfTests
            guard let imageData = viewModel.imageData else { return }
            imageFull.image = UIImage(data: imageData)
        }
    }
    
    var course: Course!
        
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = FullViewModel(course: course)
        setupUI()

    }
    
    
    
    
    @IBAction func toggleFavorite(_ sender: UIButton) {
        viewModel.isFavorite.toggle()
        setImageForFavoriteButton()
        
    }
    
    private func setupUI() {
        setImageForFavoriteButton()
    }
    
    
    private func setImageForFavoriteButton() {
        
        heart.tintColor = viewModel.isFavorite ? .red : .gray
    }
}

