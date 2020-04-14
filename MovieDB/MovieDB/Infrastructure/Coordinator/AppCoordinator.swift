//
//  AppCoordinator.swift
//  MovieDB
//
//  Created by Gerson Vieira on 13/04/20.
//  Copyright © 2020 Gerson Vieira. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigation: UINavigationController
    let window: UIWindow
    
    init(with window: UIWindow) {
        self.window = window
        self.navigation = UINavigationController()
    }
    
    func start(with presentation: Presentation) -> UIViewController {
        window.rootViewController = navigation
        window.makeKeyAndVisible()
        let main = MainCoordinator(with: self.navigation)
        self.addChildCoordinator(main)
        return main.start(with: presentation)
    }
}
