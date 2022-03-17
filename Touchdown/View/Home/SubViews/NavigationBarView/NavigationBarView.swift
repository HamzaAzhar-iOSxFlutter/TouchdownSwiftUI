//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Hamza Azhar on 17/03/2022.
//

import SwiftUI

struct NavigationBarView: View {
    
    @State private var animateLogo: Bool = false
    
    var body: some View {
        HStack {
            Button {
                print("xyz")
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }
            
            Spacer()
            LogoView()
                .opacity(self.animateLogo ? 1 : 0)
                .offset(x: 0, y: self.animateLogo ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        self.animateLogo.toggle()
                    }
                }
            Spacer()
            
            Button {
                print("xyz")
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            }

        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
