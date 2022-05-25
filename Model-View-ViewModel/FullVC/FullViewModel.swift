//
//  FullViewModel.swift
//  Model-View-ViewModel
//
//  Created by Sergey on 23.05.2022.
//

import Foundation

protocol FullViewModelProtocol: AnyObject {
    var courseName: String { get }
    var numberOfLessons: String { get }
    var numberOfTests: String { get }
    var imageData: Data? { get }
    
    var isFavorite: Bool { get set }
    
    init(course: Course)
}





class FullViewModel: FullViewModelProtocol {
    var isFavorite: Bool {
        get {
            DataManager.shared.getFavoriteStatus(for: course.name ?? "")
        } set {
            DataManager.shared.setFavoriteStatus(for: course.name ?? "", with: newValue)
        }
        
    }
    
    
    
    
    
    var imageData: Data? {
        ImageManager.shared.fetchImageData(from: course.imageUrl)
    }
    
    
    var numberOfTests: String {
        "Number of tests: \(course.numberOfTests ?? 0)"
        
    }
    
    var numberOfLessons: String {
        "Number of lessons: \(course.numberOfLessons ?? 0)"
    }
    
    var courseName: String {
        course.name ?? ""
    }
    
    private let course: Course
    
    required init(course: Course) {
        self.course = course
    }
}
