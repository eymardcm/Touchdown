//
//  Shop.swift
//  Touchdown
//
//  Created by Chad Eymard on 3/14/24.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
