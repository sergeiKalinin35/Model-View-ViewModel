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
    
}


class HomeViewModel: HomeViewModelProtocol {
    
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
