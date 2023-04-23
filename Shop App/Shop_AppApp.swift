//
//  Shop_AppApp.swift
//  Shop App
//
//  Created by Baraa BELAL on 23/04/2023.
//

import SwiftUI
import ProductsPresentation

@main
struct Shop_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ProductsList()
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
