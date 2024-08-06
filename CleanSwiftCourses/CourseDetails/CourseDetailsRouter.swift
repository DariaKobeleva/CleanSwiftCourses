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
    
    // MARK: Routing
    /*
    func routeToSomewhere(segue: UIStoryboardSegue?) {
        if let segue = segue {
            let destinationVC = segue.destination as! SomewhereViewController
            var destinationDS = destinationVC.router!.dataStore!
            passDataToSomewhere(source: dataStore!, destination: &destinationDS)
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
            var destinationDS = destinationVC.router!.dataStore!
            passDataToSomewhere(source: dataStore!, destination: &destinationDS)
            navigateToSomewhere(source: viewController!, destination: destinationVC)
        }
    }
    */
    
    // MARK: Navigation
    /*
    func navigateToSomewhere(source: CourseDetailsViewController, destination: SomewhereViewController) {
        source.show(destination, sender: nil)
    }
    */
    
    // MARK: Passing data
    /*
    func passDataToSomewhere(source: CourseDetailsDataStore, destination: inout SomewhereDataStore) {
        destination.name = source.name
    }
    */
}
