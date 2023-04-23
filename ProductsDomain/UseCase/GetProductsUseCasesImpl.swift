//
//  GetProductsUseCasesImpl.swift
//  ProductsDomian
//
//  Created by Baraa BELAL on 23/04/2023.
//

import Foundation
import ProductsData

/**
 Here is the home of business logic
 */

public class GetProductsUseCasesImpl:GetProductsUseCases{
    var remoteDataSource:ProductRemoteDataSource?
    
    public init(remoteDataSource: ProductRemoteDataSource? = nil) {
        self.remoteDataSource = remoteDataSource
    }

    public func getAllProducts() async -> Result<[ProductDom], Error> {
        do{
            let data = try await remoteDataSource?.getAllProducts() ?? []
            let productDom = data.map { product in
                ProductDom(id: product.id, title: product.title, price: product.price, description: product.description, category: product.category, image: product.image, rating: RatingDom(rate: product.rating?.rate, count: product.rating?.count))
            }
            return .success(productDom)
        }catch{
            return .failure(error)
        }
    }
    
}
