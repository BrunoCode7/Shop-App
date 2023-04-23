//
//  ProductRemoteDataSourceImpl.swift
//  ProductsData
//
//  Created by Baraa BELAL on 23/04/2023.
//

import Foundation

public class ProductRemoteDataSourceImpl:ProductRemoteDataSource{
    public init(){}
    public func getAllProducts() async throws -> [Product] {
        guard let url = URL(string: "https://fakestoreapi.com/products") else {
            throw NetworkError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, 200..<300 ~= httpResponse.statusCode else {
            throw NetworkError.requestFailed(statusCode: (response as? HTTPURLResponse)?.statusCode ?? -1)
        }
        
        do {
            let decoder = JSONDecoder()
            let products = try decoder.decode([Product].self, from: data)
            return products
        } catch {
            throw NetworkError.invalidResponse
        }
    }
}
