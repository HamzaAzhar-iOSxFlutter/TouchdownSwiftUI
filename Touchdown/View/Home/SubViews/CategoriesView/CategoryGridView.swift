//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Hamza Azhar on 18/03/2022.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: Constant.Layout.gridLayout, alignment: .center, spacing: Constant.Layout.columnSpacing, pinnedViews: []) {
                Section(
                    header: SectionView(rotationAngle: true),
                    footer: SectionView(rotationAngle: false)
                ) {
                    ForEach(Constant.Data.categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            }
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Constant.Colors.colorBackground)
    }
}
