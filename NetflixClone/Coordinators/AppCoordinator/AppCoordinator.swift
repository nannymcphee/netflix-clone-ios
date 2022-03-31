//
//  AppCoordinator.swift
//  NetflixClone
//
//  Created by Duy Nguyen on 31/03/2022.
//

import UIKit
import XCoordinator

enum AppRoute: Route {
    case homePage(StrongRouter<HomeRoute>)
}

class AppCoordinator: NavigationCoordinator<AppRoute> {
    
    // MARK: Initialization
    init() {
        super.init(initialRoute: .homePage(HomeCoordinator().strongRouter))
    }
    
    // MARK: Overrides
    override func prepareTransition(for route: AppRoute) -> NavigationTransition {
        switch route {
        case .homePage(let router):
            return .presentFullScreen(router)
        }
    }
}
