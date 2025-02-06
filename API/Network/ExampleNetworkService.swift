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
            responseType: ExampleModel.self
        )
        
        return weatherData
         */
        ErrorMain(code: 1000, message: "test")
    }
    
    private func performRequest<T: Decodable>(
        url: URL,
        method: HTTPMethod = .get,
        headers: [String: String]? = nil,
        body: Data? = nil,
        responseType: T.Type
    ) async throws -> T {
        return try await networkManager.request(
            url: url,
            method: method,
            headers: headers,
            body: body,
            responseType: responseType
        )
    }
}
