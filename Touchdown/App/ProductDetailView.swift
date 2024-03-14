//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Chad Eymard on 3/13/24.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 5, content: {
                // NAVBAR
                NavigationBarDetailView()
                    .padding(.horizontal)
                    .padding(.top, geometry.safeAreaInsets.top)
                // HEADER
                HeaderDetailView()
                    .padding(.horizontal)
                // DETAIL TOP PART
                TopPartDetailView()
                    .padding(.horizontal)
                // DETAIL BOTTOM PART
                // RATINGS AND SIZES
                // DESCRIPTION
                // QUANTITY AND FAVORITES
                // ADD TO CART
                Spacer()
            }) //: VSTACK
            .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue).ignoresSafeArea(.all, edges: .all)
        )
        }
    }
}

// MARK: - PREVIEW
struct ProductDetailView_Preview: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
