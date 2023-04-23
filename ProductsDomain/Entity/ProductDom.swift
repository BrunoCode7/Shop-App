//
//  ProductDom.swift
//  ProductsDomain
//
//  Created by Baraa BELAL on 23/04/2023.
//

import Foundation
public struct ProductDom: Codable {
    public let id: Int?
    public let title: String?
    public let price: Double?
    public let description: String?
    public let category: String?
    public let image: String?
    public let rating: RatingDom?
}


// MARK: - Rating
public struct RatingDom: Codable {
    public let rate: Double?
    public let count: Int?
}
