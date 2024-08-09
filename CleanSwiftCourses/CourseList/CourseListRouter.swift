//
//  CourseListRouter.swift
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

@objc protocol CourseListRoutingLogic {
    func routeToCourseDetails(segue: UIStoryboardSegue?)
}

protocol CourseListDataPassing {
    var dataStore: CourseListDataStore? { get }
}

class CourseListRouter: NSObject, CourseListRoutingLogic, CourseListDataPassing {
    
    weak var viewController: CourseListViewController?
    var dataStore: CourseListDataStore?
    
    // MARK: Routing
    func routeToCourseDetails(segue: UIStoryboardSegue?) {
        if let segue = segue {
            let destinationVC = segue.destination as! CourseDetailsViewController
            var destinationDS = destinationVC.router!.dataStore!
            passDataToCourseDetails(source: dataStore!, destination: &destinationDS)
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let destinationVC = storyboard.instantiateViewController(withIdentifier: "CourseDetailsViewController") as! CourseDetailsViewController
            var destinationDS = destinationVC.router!.dataStore!
            passDataToCourseDetails(source: dataStore!, destination: &destinationDS)
            navigateToCourseDetails(source: viewController!, destination: destinationVC)
        }
    }
    
    // MARK: Navigation
    func navigateToCourseDetails(source: CourseListViewController, destination: CourseDetailsViewController) {
        source.show(destination, sender: nil)
    }
    
    // MARK: Passing data
    func passDataToCourseDetails(source: CourseListDataStore, destination: inout CourseDetailsDataStore) {
        guard let indexPath = viewController?.tableView.indexPathForSelectedRow else { return }
        destination.course = source.courses[indexPath.row]
    }
}
