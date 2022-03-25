//
//  BrandViewItem.swift
//  Touchdown
//
//  Created by Hamza Azhar on 25/03/2022.
//

import SwiftUI

struct BrandViewItem: View {
    
    let brand: BrandsModel
    
    var body: some View {
        ZStack {
            Image(brand.image)
                .resizable()
                .scaledToFit()
                .padding()
                .background(Color.white.cornerRadius(12))
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray, lineWidth: 1)
                )
        }
    }
}

struct BrandViewItem_Previews: PreviewProvider {
    static var previews: some View {
        BrandViewItem(brand: Constant.Data.brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
