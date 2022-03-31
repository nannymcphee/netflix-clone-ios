//
//  HomeCoordinator.swift
//  NetflixClone
//
//  Created by Duy Nguyen on 31/03/2022.
//

import RxSwift
import XCoordinator
import NDomain

enum HomeRoute: Route {
    case homePage
}

class HomeCoordinator: NavigationCoordinator<HomeRoute> {
    // MARK: Initialization
    init() {
        super.init(initialRoute: .homePage)
    }
    
    let disposeBag = DisposeBag()
    
    // MARK: Overrides
    override func prepareTransition(for route: HomeRoute) -> NavigationTransition {
        switch route {
        case .homePage:
            let viewModel = HomeVM()
            let vc = HomeVC(viewModel: viewModel)
            
//            viewModel.eventPublisher
//                .subscribe(onNext: { [weak self] event in
//                    guard let self = self else { return }
//                    switch event {
//                    case .presentEventDetail(let model):
//                        self.trigger(.eventDetail(model))
//                    case .settings:
//                        self.trigger(.settings)
//                    case .filterEvents(let sportType):
//                        self.trigger(.filterEvents(sportType))
//                    }
//                })
//                .disposed(by: disposeBag)
            
            return .push(vc)
        }
    }
}
