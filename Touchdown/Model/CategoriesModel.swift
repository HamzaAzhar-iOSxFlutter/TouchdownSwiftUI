//
//  CategoriesModel.swift
//  Touchdown
//
//  Created by Hamza Azhar on 18/03/2022.
//

import Foundation

struct CategoriesModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
