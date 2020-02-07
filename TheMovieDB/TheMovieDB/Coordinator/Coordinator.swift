//
//  Coordinator.swift
//  TheMovieDB
//
//  Created by Gerson Vieira on 13/01/20.
//  Copyright © 2020 Gerson Vieira. All rights reserved.
//

import UIKit

enum Presentation {
    case present(animated: Bool)
    case push(animated: Bool)
    case deepLink(path: String)
}

protocol Coordinator: class {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: BaseNavigationController { get set }
    
    func start(with presentation: Presentation) -> BaseNavigationController
    func addChildCoordinator(_ coordinator: Coordinator)
    func removeChildCoordinator(_ coordinator: Coordinator)
    func popViewController(animated: Bool)
    func dissmissViewController(animated: Bool, completion: (() -> Void)? )
}

extension Coordinator {
    
    func addChildCoordinator(_ coordinator: Coordinator) {
        for element in childCoordinators {
            if element === coordinator {
                return
            }
        }
        childCoordinators.append(coordinator)
    }
    
    func removeChildCoordinator(_ coordinator: Coordinator) {
        guard !childCoordinators.isEmpty else { return }
        for (index, element) in childCoordinators.enumerated() {
            if element === coordinator {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
    
    func popViewController(animated: Bool) {
        navigationController.popViewController(animated: animated)
    }
    
    func dissmissViewController(animated: Bool, completion: (() -> Void)? ) {
        navigationController.dismiss(animated: animated, completion: completion)
    }
}
