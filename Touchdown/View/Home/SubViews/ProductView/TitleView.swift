//
//  TitleView.swift
//  Touchdown
//
//  Created by Hamza Azhar on 18/03/2022.
//

import SwiftUI

struct TitleView: View {
    
    var title: String
    
    var body: some View {
        HStack(alignment: .center) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(Constant.Colors.colorBackground)
            .padding()
    }
}
