//
//  Constant.swift
//  Touchdown
//
//  Created by Hamza Azhar on 17/03/2022.
//

import SwiftUI

struct Constant {
    
    struct Data {
        static let players: [Players] = Bundle.main.decode("player.json")
        static let categories: [CategoriesModel] = Bundle.main.decode("category.json")
        static let products: [ProductsModel] = Bundle.main.decode("product.json")
        static let brands: [BrandsModel] = Bundle.main.decode("brand.json")
        static let product: ProductsModel = products[0]
    }
    
    struct Colors {
        static let colorBackground: Color = Color("ColorBackground")
        static let colorGray: Color = Color(UIColor.systemGray4)
    }
    
    struct Layout {
        static let columnSpacing: CGFloat = 10
        static let rowSpacing: CGFloat = 10
        static var gridLayout: [GridItem] {
            return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
        }
    }
    
    struct Haptic {
        static let feedback = UIImpactFeedbackGenerator(style: .medium)
    }
}
