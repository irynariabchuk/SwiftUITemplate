//
//  HomeViewModel.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

// MARK: - HomeViewModel
// MARK: - HomeViewModel
final class HomeViewModel: ObservableObject {
    
    // MARK: - Private Properties
    let networkService: HomeNetworkServiceProtocol
    
    let categories: [Category] = [
        Category(name: "General", icon: "square.grid.2x2.fill", color: .blue),
        Category(name: "Transport", icon: "bus", color: .purple),
        Category(name: "Shopping", icon: "bag.fill", color: .pink),
        Category(name: "Bills", icon: "doc.text.fill", color: .orange),
        Category(name: "Entertainment", icon: "film.fill", color: .indigo),
        Category(name: "Grocery", icon: "leaf.fill", color: .green)
    ]

    // MARK: - Public Properties
    @Published var state: HomeState = .idle
    
    // MARK: - Init
    init(networkService: HomeNetworkServiceProtocol) {
        self.networkService = networkService
    }
    
    // MARK: - Public Methods
    @MainActor
    func fetch() async {
        // TODO: - Just for example
        state = .loading

        do {
            let result = try await networkService.fetchData()
            print("Fetched: \(result.message)")
            state = .idle
        } catch {
            state = .error(error.localizedDescription)
        }
    }
}
