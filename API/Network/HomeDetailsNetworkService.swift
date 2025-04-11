//
//  HomeDetailsNetworkService.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

// MARK: - HomeDetailsNetworkServiceProtocol
protocol HomeDetailsNetworkServiceProtocol {
    func fetchData(by searchText: String) async throws -> ErrorMain
}

// MARK: - HomeDetailsNetworkService
final class HomeDetailsNetworkService: HomeDetailsNetworkServiceProtocol {
    
    // MARK: - Private Properties
    private let networkManager: NetworkManagerProtocol
    
    // MARK: - Init
    init(networkManager: NetworkManagerProtocol) {
        self.networkManager = networkManager
    }
    
    // MARK: - Public Methods
    func fetchData(by id: String) async throws -> ErrorMain {
        ErrorMain(code: 1000, message: "test 2")
    }
}
