//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Hamza Azhar on 27/03/2022.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack {
            self.buildNavigationLeadingTrailingButtons(withAssetName: "chevron.left")
            Spacer()
            self.buildNavigationLeadingTrailingButtons(withAssetName: "cart")

        }
    }
    
    fileprivate func buildNavigationLeadingTrailingButtons(withAssetName: String) -> some View {
      return(Button {
          Constant.Haptic.feedback.impactOccurred()
          withAnimation(.easeOut) {
              self.shop.showingProduct = false
              self.shop.selectedProduct = nil
          }
      } label: {
          Image(systemName: withAssetName)
              .foregroundColor(.white)
              .font(.title)
      })
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
