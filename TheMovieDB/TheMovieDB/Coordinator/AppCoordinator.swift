//
//  AppCoordinator.swift
//  TheMovieDB
//
//  Created by Gerson Vieira on 13/01/20.
//  Copyright © 2020 Gerson Vieira. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    let window: UIWindow
    
    init(with window: UIWindow) {
        self.window = window
     //   let navigation = BaseNavigationController()
      //  self.navigationController = navigation
    }
    
    func start(with presentation: Presentation) -> UINavigationController {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        let mainViewController = ViewController()
        
        self.addChildCoordinator(mainViewController)
        return mainViewController.start(with: presentation)
    }
}
