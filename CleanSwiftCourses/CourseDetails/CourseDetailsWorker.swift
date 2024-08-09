//
//  CourseDetailsWorker.swift
//  CleanSwiftCourses
//
//  Created by Дарья Кобелева on 06.08.2024.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import Foundation

class CourseDetailsWorker {
    func getImage(from imageURL: URL?) -> Data? {
        ImageManager.shared.fetchImageData(from: imageURL)
    }
    
    func getFavoriteStatus(for courseName: String) -> Bool {
        DataManager.shared.getFavoriteStatus(for: courseName)
    }
    
    func setNewFavoriteStatus(for courseName: String, with status: Bool) {
        DataManager.shared.setFavoriteStatus(for: courseName, with: status)
    }
}
