//
//  DependencyContainer.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

// MARK: - DependencyContainer
final class DependencyContainer {
    // MARK: - Private Properties
    private let networkManager: NetworkManagerProtocol = NetworkManager()
    
    // MARK: - Public Methods
    func makeExampleService() -> ExampleNetworkServiceProtocol {
        return ExampleNetworkService(networkManager: networkManager)
    }
    
    func makeHomeViewModel() -> HomeViewModel {
        return HomeViewModel(exampleNetworkService: makeExampleService())
    }
}
