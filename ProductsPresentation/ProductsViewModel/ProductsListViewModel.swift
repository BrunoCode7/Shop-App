//
//  ProductsListViewModel.swift
//  ProductsPresentation
//
//  Created by Baraa BELAL on 23/04/2023.
//

import Foundation
import AppDependency
import ProductsDomain

class ProductsListViewModel:ObservableObject{
    @Published var uiState = UIState<[ProductUi]>.loading

    var getProductsUseCase = AppDependencies.shared.resolve(GetProductsUseCases.self)
    
    func fetchAllProducts() async {
        let response = await getProductsUseCase?.getAllProducts()
        switch (response){
            
        case .success(let products):
            let productsUi = products.map { productDom in
                ProductUi(id: productDom.id, title: productDom.title, price: productDom.price, description: productDom.description, category: productDom.category, image: productDom.image, rating: RatingUi(rate: productDom.rating?.rate, count: productDom.rating?.count))
            }
            DispatchQueue.main.async {
                self.uiState = .success(productsUi)
            }
            print(productsUi)
                
        case .failure(let error):
            DispatchQueue.main.async {
                self.uiState = .error(error)
            }
            print(error)
            
        default:
            print("Nothing Happened")
        }
    }
    
}
