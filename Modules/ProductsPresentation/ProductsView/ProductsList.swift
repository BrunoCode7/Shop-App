//
//  ProductsList.swift
//  ProductsPresentation
//
//  Created by Baraa BELAL on 23/04/2023.
//

import SwiftUI

public struct ProductsList: View {
    @ObservedObject private var viewModel = ProductsListViewModel()
    
    public init() {}
    public var body: some View {
        Group{
            switch viewModel.uiState {
            case .loading:
                ProgressView()
            case .success(let data):
                List(data, id: \.id) { item in
                    ProductListItemView(title: item.title ?? "", price: item.price ?? 0.0, imageURL: URL(string: item.image ?? "")!)
                }
                .refreshable {
                    await viewModel.fetchAllProducts()
                }
            case .error(let error):
                Text(error.localizedDescription)
            }
        }.task {
            await viewModel.fetchAllProducts()
        }
    }
}

struct ProductsList_Previews: PreviewProvider {
    static var previews: some View {
        ProductsList()
    }
}
