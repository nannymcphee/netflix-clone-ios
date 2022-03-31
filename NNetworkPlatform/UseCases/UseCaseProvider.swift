//
//  UseCaseProvider.swift
//  NNetworkPlatform
//
//  Created by Duy Nguyen on 31/03/2022.
//

import Foundation

public protocol UseCaseProvider {
    func makeEventUseCase() -> EventUseCase
}

public final class UseCaseProviderImpl: UseCaseProvider {
    public init(config: BuildConfig) {
        BuildConfig.default = config
    }
    
    public func makeEventUseCase() -> EventUseCase {
        return EventUseCaseImpl()
    }
}
