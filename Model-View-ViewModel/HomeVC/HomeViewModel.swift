//
//  HomeViewModel.swift
//  Model-View-ViewModel
//
//  Created by Sergey on 23.05.2022.
//

import Foundation

protocol HomeViewModelProtocol: AnyObject {
    var courses: [Course] { get }
    func fetchCourses(completion: @escaping() -> Void)
    func numberOfRows() -> Int
    
    func cellViewModel(at indexPath: IndexPath) -> TopCellViewModelProtocol?
    
    func viewModelForSelectedRow(at indexPath: IndexPath) -> FullViewModelProtocol?
    
    
    
}


class HomeViewModel: HomeViewModelProtocol {
    func viewModelForSelectedRow(at indexPath: IndexPath) -> FullViewModelProtocol? {
        let course = courses[indexPath.row]
        return FullViewModel(course: course)
    }
    
    func cellViewModel(at indexPath: IndexPath) -> TopCellViewModelProtocol? {
        let course = courses[indexPath.row]
        return TopCellViewModel(course: course)
    }
    
    
    var courses: [Course] = []
    
    func fetchCourses(completion: @escaping () -> Void) {
        NetworkManager.shared.fetchData { courses in
            self.courses = courses
            DispatchQueue.main.async {
                completion()
            }
        }
    }
    
    func numberOfRows() -> Int {
        courses.count
    }
}
