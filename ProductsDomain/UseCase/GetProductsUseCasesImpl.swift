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

    public func getAllProducts() async -> Result<[Product], Error> {
        do{
            let data = try await remoteDataSource?.getAllProducts() ?? []
            return .success(data)
        }catch{
            return .failure(error)
        }
    }
    
}
