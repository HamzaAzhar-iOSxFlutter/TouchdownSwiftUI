//
//  SliderView.swift
//  Touchdown
//
//  Created by Hamza Azhar on 18/03/2022.
//

import SwiftUI

struct SliderView: View {
    
    var body: some View {
        TabView {
            ForEach(Constant.Data.players) { player in
                Image(player.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .padding(.horizontal, 15)
            }
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always ))
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Constant.Colors.colorBackground)
    }
}
