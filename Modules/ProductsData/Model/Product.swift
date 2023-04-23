//
//  Product.swift
//  ProductsData
//
//  Created by Baraa BELAL on 23/04/2023.
//

import Foundation


public struct Product: Codable {
   public let id: Int?
    public let title: String?
    public let price: Double?
    public let description: String?
    public let category: String?
    public let image: String?
    public let rating: Rating?
}


// MARK: - Rating
public struct Rating: Codable {
    public let rate: Double?
    public let count: Int?
}
