//
//  ContentView.swift
//  Touchdown
//
//  Created by Hamza Azhar on 17/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            VStack {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        self.buildSliderView()
                        self.buildCategoryGridView()
                        TitleView(title: "Helmets")
                        self.buildProductsGrid()
                        TitleView(title: "Brands")
                        self.buildBrandGridView()
                        
                        self.buildFooterView()
                    }
                }
            }.background(Constant.Colors.colorBackground.ignoresSafeArea(.all, edges: .all))
        }.ignoresSafeArea(.all, edges: .top)
    }
    
    fileprivate func buildSliderView() -> some View {
        return(SliderView()
                .frame(width: 420, height: 250, alignment: .center)
                .padding(.vertical, 20))
    }
    
    fileprivate func buildCategoryGridView() -> some View {
        return (CategoryGridView()
                    .padding(.bottom, 10))
    }
    
    fileprivate func buildProductsGrid() -> some View {
        return (LazyVGrid(columns: Constant.Layout.gridLayout, spacing: 15) {
            ForEach(Constant.Data.products) { product in
                ProductItemView(product: product)
            }
        } .padding(15))
    }
    
    fileprivate func buildFooterView() -> some View {
        return (FooterView()
                    .padding(.horizontal))
    }
    
    fileprivate func buildBrandGridView() -> some View {
        return (BrandGridView())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
