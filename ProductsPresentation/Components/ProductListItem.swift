//
//  ProductListItem.swift
//  ProductsPresentation
//
//  Created by Baraa BELAL on 24/04/2023.
//

import URLImage
import SwiftUI

struct ProductListItemView: View {
    let title: String
    let price: Double
    let imageURL: URL

    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            URLImage(url: imageURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
            }
            VStack(alignment: .leading, spacing: 5) {
                Text(title)
                    .font(.headline)
                
                Text(String(format: "$%.2f", price))
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
    }
}
