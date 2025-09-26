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
    let id: String
    
    // MARK: - Public Properties
    @Published var state: HomeDetailsState = .idle
    
    // MARK: - Init
    init(id: String) {
        self.id = id
    }
    
    deinit {
        print("Deinit")
    }
}
