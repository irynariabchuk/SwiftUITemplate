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
    init(serviceContainer: ServiceContainerProtocol) {
        self.serviceContainer = serviceContainer
    }
    
    // MARK: - Public Methods
    @MainActor
    func fetch() async {
        state = .loading        
    }
}
