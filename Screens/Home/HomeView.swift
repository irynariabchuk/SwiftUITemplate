//
//  HomeView.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI

// MARK: - HomeView
struct HomeView: View {
    
    // MARK: - Public Properties
    @ObservedObject var viewModel: HomeViewModel
    
    // MARK: - Private Properties
    @Environment(\.resolver) private var resolver
    @State private var selectedID: String?
    
    // MARK: - Views
    var body: some View {
        NavigationStack {
            EmptyView()
        }
        .errorAlert(
            isPresented: .constant(viewModel.state.isError),
            errorMessage: viewModel.state.error
        )
        .overlay {
            if viewModel.state.isLoading {
                ProgressView()
            }
        }
    }
}
