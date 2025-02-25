//
//  DependencyContainer.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

// MARK: - DependencyContainer + ServiceContainerProtocol
final class DependencyContainer: ServiceContainerProtocol {
    
    // MARK: - Private Properties
    private let networkManager: NetworkManagerProtocol = NetworkManager()
        
    // MARK: - Services
    lazy var exampleNetworkService: ExampleNetworkServiceProtocol = ExampleNetworkService(networkManager: networkManager)
}
