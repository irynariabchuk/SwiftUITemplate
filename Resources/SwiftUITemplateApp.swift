//
//  SwiftUITemplateApp.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI

@main
struct SwiftUITemplateApp: App {
    
    // MARK: - Private Properties
    private let container = DependencyContainer()

    var body: some Scene {
        WindowGroup {
            let viewModel = container.resolver.resolve(HomeViewModel.self)!
            HomeView(viewModel: viewModel)
                .environment(\.resolver, container.resolver)
        }
    }
}
