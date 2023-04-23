//
//  UiState.swift
//  ProductsPresentation
//
//  Created by Baraa BELAL on 23/04/2023.
//

enum UIState<T> {
    case loading
    case success(T)
    case error(Error)
}
