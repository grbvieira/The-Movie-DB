//
//  MainView.swift
//  TheMovieDB
//
//  Created by Gerson Vieira on 13/01/20.
//  Copyright © 2020 Gerson Vieira. All rights reserved.
//

import Foundation
import Moya

class MainView: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: BaseNavigationController
    let viewController: MainViewController
    
    init(with navigation: BaseNavigationController) {
        self.navigationController = navigation
        let provider = MoyaProvider<MoviesRouter>()
        let service = MoviesService(provider: provider)
        let viewModel = MoviesViewModel(service)
        viewController = MainViewController(with: viewModel)
    }
    
    func start(with presentation: Presentation) -> BaseNavigationController {
        switch presentation {
        case .present(let animated):
            self.navigationController.present(viewController, animated: animated, completion: nil)
        case .push(let animated):
            self.navigationController.pushViewController(viewController, animated: animated)
        case .deepLink(let path):
            self.handleDeepLink(with: path)
        }
    }
    
    func start(with presentation: Presentation) -> BaseNavigationController {
        self.start(presentation: presentation)
        return self.viewController
    }
    
    func handleDeepLink(with path: String){
        
    }
}
