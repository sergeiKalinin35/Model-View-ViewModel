//
//  ImageManager.swift
//  Model-View-ViewModel
//
//  Created by Sergey on 23.05.2022.
//

import Foundation


class ImageManager {
    static let shared = ImageManager()
    
    private init() {}
    
    func fetchImageData(from url: URL?) -> Data? {
        guard let url = url else { return nil }
        guard let imageData = try? Data(contentsOf: url) else { return nil }
        return imageData
    }
}
