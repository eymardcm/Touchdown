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
                    .zIndex(1)
                
                // DETAIL BOTTOM PART
                VStack(alignment: .center, spacing: 0, content: {
                    
                    // RATINGS AND SIZES
                    RatingsSizesDetailView()
                        .padding(.top, -25)
                        .padding(.bottom, 10)
                    // DESCRIPTION
                    ScrollView(.vertical, showsIndicators: false, content: {
                        Text(sampleProduct.description)
                            .font(.system(.body, design: .rounded))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                    }) //: SCROLL
                    
                    // QUANTITY AND FAVORITES
                    QuantityFavoriteDetailView()
                        .padding(.vertical, 10)
                    
                    // ADD TO CART
                    AddToCartDetailView()
                        .padding(.bottom, 20)
                    
                    Spacer()
                    
                }) //: VSTACK
                .padding(.horizontal)
                .background(
                    Color.white
                        .clipShape(CustomShape())
                        .padding(.top, -105)
                )
                
            }) //: VSTACK
            .zIndex(0)
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
