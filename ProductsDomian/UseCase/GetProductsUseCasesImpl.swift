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

class GetProductsUseCasesImpl:GetProductsUseCases{
    var remoteDataSource:ProductRemoteDataSource?

    func getAllProducts() async -> Result<[Product], Error> {
        do{
            let data = try await remoteDataSource?.getAllProducts() ?? []
            return .success(data)
        }catch{
            return .failure(error)
        }
    }
    
}
