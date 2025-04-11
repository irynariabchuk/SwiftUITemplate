//
//  HomeDetailsViewModelState.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//


import Foundation

extension HomeDetailsViewModel {
    
    // MARK: - HomeDetailsState
    enum HomeDetailseState {
        case idle
        case loading
        case error(String)
        
        var error: String? {
            switch self {
            case .error(let error):
                return error
            default:
                return nil
            }
        }
        
        var isError: Bool {
            switch self {
            case .error:
                return true
            default:
                return false
            }
        }
        
        var isLoading: Bool {
            switch self {
            case .loading:
                return true
            default:
                return false
            }
        }
    }
}
