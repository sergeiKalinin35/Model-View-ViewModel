//
//  Course.swift
//  Model-View-ViewModel
//
//  Created by Sergey on 23.05.2022.
//

import Foundation

struct Course: Decodable {
    let name: String?
    let imageUrl: URL?
    let numberOfLessons: Int?
    let numberOfTests: Int?
}
