//
//  Shop_AppApp.swift
//  Shop App
//
//  Created by Baraa BELAL on 23/04/2023.
//

import SwiftUI
import ProductsPresentation
import AppDependency

@main
struct Shop_AppApp: App {
    let persistenceController = PersistenceController.shared
    init() {
        AppDependencies.shared.setup()
    }
    var body: some Scene {
        WindowGroup {
            ProductsList()
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
