//
//  FooterView.swift
//  Touchdown
//
//  Created by Chad Eymard on 3/10/24.
//

import SwiftUI

struct FooterView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack (alignment: .center, spacing: 10){
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helments in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("""
                Copyright © Chad Eymard
                All right reserved.
                """)
            .font(.footnote)
            .fontWeight(.bold)
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)
            .layoutPriority(1)
        } //: VSTACK
        .padding()
    }
}

// MARK: - PREVIEW
struct FooterView_Preview: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
