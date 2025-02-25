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
    
    // MARK: - Views
    var body: some View {
        NavigationStack {
            mainView
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
    
    @ViewBuilder
    var mainView: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello!")
        }
        .padding()
    }
}
