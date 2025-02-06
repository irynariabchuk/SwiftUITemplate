//
//  HomeViewModel.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

// MARK: - HomeViewModel
final class HomeViewModel: ObservableObject {
    
    // MARK: - Private Properties
    private let exampleNetworkServiceProtocol: ExampleNetworkServiceProtocol
    
    // MARK: - Public Properties
    @Published var state: HomeState = .idle
    
    // MARK: - Init
    init(exampleNetworkService: ExampleNetworkServiceProtocol) {
        self.exampleNetworkServiceProtocol = exampleNetworkService
    }
    
    // MARK: - Public Methods
    @MainActor
    func fetch() async {
        state = .loading
    }
}
