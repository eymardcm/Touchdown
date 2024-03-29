//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Chad Eymard on 3/11/24.
//

import SwiftUI

struct FeaturedTabView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach (players) {
                player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

// MARK: - PREVIEW
struct FeaturedTabView_Preview: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(
                Color.gray
            )
    }
}
