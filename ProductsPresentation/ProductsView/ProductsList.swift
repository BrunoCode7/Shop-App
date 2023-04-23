//
//  ProductsList.swift
//  ProductsPresentation
//
//  Created by Baraa BELAL on 23/04/2023.
//

import SwiftUI

public struct ProductsList: View {
    @ObservedObject private var viewModel = ProductsListViewModel()

    public init(){}
    public var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ProductsList_Previews: PreviewProvider {
    static var previews: some View {
        ProductsList()
    }
}
