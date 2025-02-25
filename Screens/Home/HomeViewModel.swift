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
    let serviceContainer: ServiceContainerProtocol

    // MARK: - Public Properties
    @Published var state: HomeState = .idle
    
    // MARK: - Init
    init(serviceContainer: ServiceContainerProtocol) {
        self.serviceContainer = serviceContainer
    }
    
    // MARK: - Public Methods
    @MainActor
    func fetch() async {
        state = .loading        
    }
}
