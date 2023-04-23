//
//  Network.swift
//  ProductsData
//
//  Created by Baraa BELAL on 23/04/2023.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case requestFailed(statusCode: Int)
    case invalidResponse
}
