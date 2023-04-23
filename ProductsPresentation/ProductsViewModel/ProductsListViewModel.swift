//
//  ProductsListViewModel.swift
//  ProductsPresentation
//
//  Created by Baraa BELAL on 23/04/2023.
//

import Foundation
import ProductsDomian

class ProductsListViewModel:ObservableObject{
    var getProductsUseCase: GetProductsUseCases?
    
    func fetchAllProducts() async{
        let response = await getProductsUseCase?.getAllProducts()
        switch (response){
            
        case .success(let products):
            print(products)
        case .failure(let error):
            print(error)
            
        default:
            print("Nothing Happened")
        }
    }
    
}