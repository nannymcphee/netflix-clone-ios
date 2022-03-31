//
//  HomeVM.swift
//  NetflixClone
//
//  Created by Duy Nguyen on 31/03/2022.
//

import RxSwift
import RxCocoa
import Resolver
import NDomain

final class HomeVM: BaseVM, ViewModelTransformable, ViewModelTrackable {
    // MARK: - Input
    struct Input {
        
    }
    
    // MARK: - Output
    struct Output {
        
    }
    
    // MARK: - Variables
    let loadingIndicator = ActivityIndicator()
    let errorTracker = ErrorTracker()
    
    // MARK: - Public functions
    func transform(input: Input) -> Output {
        return Output()
    }
}

// MARK: - Private functions
private extension HomeVM {
    
}
