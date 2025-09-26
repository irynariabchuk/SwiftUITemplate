//
//  HomeDetailsView.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import SwiftUI

// MARK: - HomeDetailsView
struct HomeDetailsView: View {
    
    // MARK: - Public Properties
    @ObservedObject var viewModel: HomeDetailsViewModel
    
    // MARK: - Views
    var body: some View {
        NavigationStack {
            mainView
        }  .toolbar {
            ToolbarItem(placement: .principal) {
                Text(viewModel.id)
                    .foregroundColor(.white)
            }
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
        LinearGradient(colors: [.black, .purple.opacity(0.7)], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
    }
}
