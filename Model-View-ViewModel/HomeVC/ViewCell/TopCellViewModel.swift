//
//  TopCellViewModel.swift
//  Model-View-ViewModel
//
//  Created by Sergey on 26.05.2022.
//

import Foundation


protocol TopCellViewModelProtocol: AnyObject {
    var courseName: String { get }
    var imageData: Data? { get }
    init(course: Course)
    
}

class TopCellViewModel: TopCellViewModelProtocol {
    var courseName: String {
        course.name ?? ""
    }
    
    var imageData: Data? {
        ImageManager.shared.fetchImageData(from: course.imageUrl)
    }
    
    
    
    private let course: Course
    
    required init(course: Course) {
        self.course = course
    }
}



