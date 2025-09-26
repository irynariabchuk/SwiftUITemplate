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
    let networkService: HomeNetworkServiceProtocol

    // MARK: - Public Properties
    @Published var state: HomeState = .idle
    
    // MARK: - Init
    init(networkService: HomeNetworkServiceProtocol) {
        self.networkService = networkService
    }
}
