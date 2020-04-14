//
//  MainCoordinator.swift
//  MovieDB
//
//  Created by Gerson Vieira on 13/04/20.
//  Copyright © 2020 Gerson Vieira. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigation: UINavigationController
    let controller: UIViewController
    
    init(with navigation: UINavigationController) {
        self.navigation = navigation
        self.controller = MainViewController()
    }
    
    func start(presentation: Presentation) {
        switch presentation {
        case .present(let animated):
            self.navigation.present(controller, animated: animated, completion: nil)
        case .push(let animated):
            self.navigation.pushViewController(controller, animated: animated)
        }
    }
    
    func start(with presentation: Presentation) -> UIViewController {
        self.start(presentation: presentation)
        return self.controller
    }
}
