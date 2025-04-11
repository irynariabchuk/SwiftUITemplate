//
//  ViewModelAssembly.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//


import Foundation
import Swinject

final class ViewModelAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(HomeViewModel.self) { resolver in
            let service = resolver.resolve(HomeNetworkServiceProtocol.self)!
            return HomeViewModel(networkService: service)
        }
        
        container.register(HomeDetailsViewModel.self) { (resolver, id: String) in
            let service = resolver.resolve(HomeDetailsNetworkServiceProtocol.self)!
            return HomeDetailsViewModel(networkService: service, id: id)
        }
    }
}
