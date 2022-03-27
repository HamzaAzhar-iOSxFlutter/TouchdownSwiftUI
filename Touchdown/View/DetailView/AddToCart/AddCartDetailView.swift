//
//  AddCartDetailView.swift
//  Touchdown
//
//  Created by Hamza Azhar on 27/03/2022.
//

import SwiftUI

struct AddCartDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        Button {
            print("xyz")
        } label: {
            Spacer()
            Text("ADD TO CART")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(15)
        .background(
            Color(red: self.shop.selectedProduct?.red ?? Constant.Data.product.red, green: self.shop.selectedProduct?.green ?? Constant.Data.product.green, blue: self.shop.selectedProduct?.blue ?? Constant.Data.product.blue)
        ).clipShape(Capsule())
    }
}

struct AddCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
