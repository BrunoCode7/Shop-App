//
//  Product.swift
//  ProductsData
//
//  Created by Baraa BELAL on 23/04/2023.
//

import Foundation


public struct Product: Codable {
    let id: Int?
    let title: String?
    let price: Double?
    let description: String?
    let category: String?
    let image: String?
    let rating: Rating?
}


// MARK: - Rating
public struct Rating: Codable {
    let rate: Double?
    let count: Int?
}
