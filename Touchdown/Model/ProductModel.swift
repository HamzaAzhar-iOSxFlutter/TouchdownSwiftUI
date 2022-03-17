//
//  ProductModel.swift
//  Touchdown
//
//  Created by Hamza Azhar on 18/03/2022.
//

import Foundation

struct ProductsModel: Codable, Identifiable {
    let id: Int
    let name, image, price, description: String
    let colors: [Double]
}
