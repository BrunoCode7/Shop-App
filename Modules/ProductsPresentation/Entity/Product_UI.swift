//
//  Product_UI.swift
//  ProductsPresentation
//
//  Created by Baraa BELAL on 23/04/2023.
//

import Foundation
public struct ProductUi: Codable {
    let id: Int?
    let title: String?
    let price: Double?
    let description: String?
    let category: String?
    let image: String?
    let rating: RatingUi?
}


// MARK: - Rating
public struct RatingUi: Codable {
    let rate: Double?
    let count: Int?
}
