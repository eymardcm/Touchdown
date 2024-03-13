//
//  BrandItem.swift
//  Touchdown
//
//  Created by Chad Eymard on 3/12/24.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - PROPERTIES
    let brand: Brand
    
    // MARK: - BODY
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(.white)
            .cornerRadius(12)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray, lineWidth: 1)
            )
    }
}

// MARK: - PREVIEW
struct BrandItem_Preview: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
