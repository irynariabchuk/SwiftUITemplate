//
//  HomeDetailsViewModel.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

// MARK: - HomeViewModel
final class HomeDetailsViewModel: ObservableObject {
    
    // MARK: - Private Properties
    let networkService: HomeDetailsNetworkServiceProtocol
    let id: String
    
    // MARK: - Public Properties
    @Published var state: HomeDetailsState = .idle
    
    // MARK: - Init
    init(networkService: HomeDetailsNetworkServiceProtocol, id: String) {
        self.networkService = networkService
        self.id = id
    }
    
    deinit {
        print("Deinit")
    }
    
    // MARK: - Public Methods
    @MainActor
    func fetch() async {
        // TODO: - Just for example
        state = .loading

        do {
            let result = try await networkService.fetchData(by: "test 2")
            print("Fetched: \(result.message)")
            state = .idle
        } catch {
            state = .error(error.localizedDescription)
        }
    }
}
