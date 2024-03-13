//
//  ContentView.swift
//  Touchdown
//
//  Created by Chad Eymard on 3/10/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack (spacing: 0){
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, geometry.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .frame(height: UIScreen.main.bounds.width / 1.475)
                                .padding(.vertical, 10)
                            CategoryGridView()
                            TitleView(title: "Helmets")
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach (products) {
                                    product in
                                    ProductItemView(product: product)
                                } //: LOOP
                            }) //: GRID
                            .padding(15)
                            TitleView(title: "Brands")
                            BrandGridView()
                            FooterView()
                                .padding(.horizontal)
                        } //: VSTACK
                    }) //: SCROLL
                    
                } //: VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } //: ZSTACK
            .ignoresSafeArea(.all, edges: .top)
        } //: GEOMETRY
    }
}

// MARK: - PREVIEW
struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
