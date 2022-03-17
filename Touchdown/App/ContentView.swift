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
                        SliderView()
                            .frame(width: 420, height: 250, alignment: .center)
                            .padding(.vertical, 20)
                            
                        CategoryGridView()
                            .padding(.bottom, 10)
                        
                        TitleView(title: "Helmets")
                        FooterView()
                            .padding(.horizontal)
                    }
                }
            }.background(Constant.Colors.colorBackground.ignoresSafeArea(.all, edges: .all))
        }.ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
