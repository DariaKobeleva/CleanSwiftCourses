//
//  CourseDetailsRouter.swift
//  CleanSwiftCourses
//
//  Created by Дарья Кобелева on 06.08.2024.
//  Copyright (c) 2024 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol CourseDetailsRoutingLogic {
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol CourseDetailsDataPassing {
    var dataStore: CourseDetailsDataStore? { get }
}

class CourseDetailsRouter: NSObject, CourseDetailsRoutingLogic, CourseDetailsDataPassing {
    
    weak var viewController: CourseDetailsViewController?
    var dataStore: CourseDetailsDataStore?
}
