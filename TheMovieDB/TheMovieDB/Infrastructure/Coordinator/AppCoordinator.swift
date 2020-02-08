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
        self.navigationController = UINavigationController()
    }

    func start(with presentation: Presentation) -> UIViewController {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        let mainCoordiantor = MainViewCoordinator(with: navigationController)
        
        self.addChildCoordinator(mainCoordiantor)
        return mainCoordiantor.start(with: presentation)
    }
}
