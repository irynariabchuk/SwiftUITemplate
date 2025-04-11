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
            mainView
                .navigationDestination(item: $selectedID) { id in
                    HomeDetailsView(
                        viewModel: resolver.resolve(HomeDetailsViewModel.self, argument: id)!
                    )
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
        ZStack {
            LinearGradient(colors: [.black, .purple.opacity(0.7)], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 20) {
                ForEach(viewModel.categories) { category in
                    VStack(spacing: 12) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .fill(Color.white.opacity(0.05))
                                .frame(height: 100)
                            
                            Image(systemName: category.icon)
                                .font(.system(size: 30))
                                .foregroundColor(category.color)
                        }
                        
                        Text(category.name)
                            .font(.subheadline)
                            .foregroundColor(.white)
                    }
                    .onTapGesture {
                        selectedID = category.name
                    }
                }
            }
            .padding(.horizontal)
            .padding(.top)
        }
    }
}
