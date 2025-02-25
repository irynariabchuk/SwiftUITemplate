//
//  ExampleNetworkService.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

// MARK: - ExampleNetworkServiceProtocol
protocol ExampleNetworkServiceProtocol {
    func fetchData(by searchText: String) async throws -> ErrorMain
}

// MARK: - ExampleNetworkService
final class ExampleNetworkService: ExampleNetworkServiceProtocol {
    
    // MARK: - Private Properties
    private let networkManager: NetworkManagerProtocol
    
    // MARK: - Init
    init(networkManager: NetworkManagerProtocol) {
        self.networkManager = networkManager
    }
    
    // MARK: - Public Methods
    func fetchData(by searchText: String) async throws -> ErrorMain {
        /*
        guard let url = Endpoint.test(searchText).url else {
            throw URLError(.badURL)
        }
        
        let weatherData: ExampleModel = try await performRequest(
            url: url,
            method: .get,
            headers: nil,
            body: nil,
            responseType: ExampleModel.self
        )
        
        return weatherData
         */
        ErrorMain(code: 1000, message: "test")
    }
}
