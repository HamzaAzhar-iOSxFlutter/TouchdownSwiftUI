//
//  ProductModel.swift
//  Touchdown
//
//  Created by Hamza Azhar on 18/03/2022.
//

import Foundation

struct ProductsModel: Codable, Identifiable {
    let id, price: Int
    let name, image, description: String
    let color: [Double]
    
    var red: Double { return color[0] }
    var green: Double { return color[1] }
    var blue: Double { return color[2] }
    var formattedPrice: String { return "$\(price)" }
}

