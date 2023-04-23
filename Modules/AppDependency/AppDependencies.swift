//
//  AppDependencies.swift
//  AppDependency
//
//  Created by Baraa BELAL on 23/04/2023.
//

import Swinject
import ProductsData
import ProductsDomain

public class AppDependencies {
    
    public static let shared = AppDependencies()
    
    private let container = Container()
    
    public func setup() {
        // Register all your app dependencies here
        
        container.register(ProductRemoteDataSource.self) { _ in
            ProductRemoteDataSourceImpl()
        }
        
        container.register(GetProductsUseCases.self) { resolver in
            GetProductsUseCasesImpl(remoteDataSource: resolver.resolve(ProductRemoteDataSource.self))
        }
        
    }
    
    public func resolve<T>(_ type: T.Type) -> T? {
        return container.resolve(type.self)
    }
    
}
