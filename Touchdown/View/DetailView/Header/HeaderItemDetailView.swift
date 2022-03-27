//
//  HeaderItemDetailView.swift
//  Touchdown
//
//  Created by Hamza Azhar on 27/03/2022.
//

import SwiftUI

struct HeaderItemDetailView: View {
    @EnvironmentObject var shop: Shop
    @State private var animateHeader: Bool = false
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                Text(self.shop.selectedProduct?.formattedPrice ?? Constant.Data.product.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: self.animateHeader ? -50 : -75)
            Spacer()
            
            Image(self.shop.selectedProduct?.image ?? Constant.Data.product.image)
                .resizable()
                .scaledToFit()
                .offset(y: self.animateHeader ? 0 : -35)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                self.animateHeader = true
            }
        }
    }
}

struct HeaderItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderItemDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
