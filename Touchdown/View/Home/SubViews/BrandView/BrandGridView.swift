//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Hamza Azhar on 25/03/2022.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: Constant.Layout.gridLayout, spacing: Constant.Layout.columnSpacing) {
                ForEach(Constant.Data.brands) { brand in
                    BrandViewItem(brand: brand)
                }
            }
            .frame(height: 200)
            .padding(15)
        }
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(Constant.Colors.colorBackground)
    }
}
