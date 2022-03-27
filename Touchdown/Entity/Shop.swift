//
//  Shop.swift
//  Touchdown
//
//  Created by Hamza Azhar on 27/03/2022.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: ProductsModel? = nil
}
