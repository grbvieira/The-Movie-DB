//
//  MainViewCoordinator.swift
//  TheMovieDB
//
//  Created by Gerson Vieira on 13/01/20.
//  Copyright © 2020 Gerson Vieira. All rights reserved.
//

import Foundation
import Moya

class MainViewCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    let viewController: MainViewController
    
    init(with navigation: UINavigationController) {
        self.navigationController = navigation
        self.viewController = MainViewController()
       // let provider = MoyaProvider<MoviesRouter>()
        //let service = MoviesService(provider: provider)
        //let viewModel = MoviesViewModel(service)
        //viewController = MainViewController(with: viewModel)
    }
    
    func start(presentation: Presentation) {
        switch presentation {
        case .present(let animated):
            self.navigationController.present(viewController, animated: animated, completion: nil)
        case .push(let animated):
            self.navigationController.pushViewController(viewController, animated: animated)
        }
    }
    
    func start(with presentation: Presentation) -> UIViewController {
        self.start(presentation: presentation)
        return self.viewController
    }
    

}
