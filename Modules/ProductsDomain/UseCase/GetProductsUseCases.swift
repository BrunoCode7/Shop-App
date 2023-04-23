//
//  GetProductsUseCases.swift
//  ProductsDomian
//
//  Created by Baraa BELAL on 23/04/2023.
//

import Foundation
import ProductsData

public protocol GetProductsUseCases{
     func getAllProducts() async -> Result<[ProductDom],Error>
}
