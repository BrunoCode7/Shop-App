//
//  ProductRemoteDataSource.swift
//  ProductsData
//
//  Created by Baraa BELAL on 23/04/2023.
//

import Foundation
public protocol ProductRemoteDataSource{
    func getAllProducts() async throws -> [Product]
}
