//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Hamza Azhar on 27/03/2022.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            self.buildNavigationBar()
            self.buildHeaderDetailView()
            self.buildHeaderItemView()
                .zIndex(1)
            self.buildDescriptionViewCustomShape()
            
        }
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: self.shop.selectedProduct?.red ?? Constant.Data.product.red,
                  green: self.shop.selectedProduct?.green ?? Constant.Data.product.green,
                  blue: self.shop.selectedProduct?.blue ?? Constant.Data.product.blue)
        ).ignoresSafeArea(.all, edges: .all)
    }
    
    fileprivate func buildNavigationBar() -> some View {
        return (NavigationBarDetailView()
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .padding(.horizontal)
        )
    }
    
    fileprivate func buildHeaderDetailView() -> some View {
        return(HeaderDetailView()
                .padding(.horizontal)
        )
    }
    
    fileprivate func buildHeaderItemView() -> some View {
        return (HeaderItemDetailView().padding(.horizontal))
    }
    
    fileprivate func buildDescriptionViewCustomShape() -> some View {
        return(VStack(alignment: .leading, spacing: 0) {
            self.buildRatingsAndSizesView()
                .padding(.top, -20)
                .padding(.bottom, 10)
            ScrollView(.vertical, showsIndicators: false) {
                Text(self.shop.selectedProduct?.description ??  Constant.Data.product.description)
                    .font(.system(.body, design: .rounded))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
            }
            self.buildQuantityDetailView()
                .padding(.bottom, 10)
            AddCartDetailView()
                .padding(.bottom, 10)
        }
                .padding(.horizontal)
                .background(
                    Color.white
                        .clipShape(CustomShape())
                        .padding(.top, -105)
                ))
    }
    
    fileprivate func buildRatingsAndSizesView() -> some View {
        return(RatingsDetailView())
    }
    
    fileprivate func buildQuantityDetailView() -> some View {
        return(QuantityDetailView())
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
