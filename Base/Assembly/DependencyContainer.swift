//
//  DependencyContainer.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import Swinject

// MARK: - DependencyContainer
final class DependencyContainer {
  
    let assembler: Assembler

    init() {
        assembler = Assembler([
            ServiceAssembly(),
            ViewModelAssembly()
        ])
    }

    var resolver: Resolver {
        assembler.resolver
    }
}
