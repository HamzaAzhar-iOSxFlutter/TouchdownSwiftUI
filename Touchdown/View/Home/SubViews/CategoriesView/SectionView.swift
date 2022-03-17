//
//  SectionView.swift
//  Touchdown
//
//  Created by Hamza Azhar on 18/03/2022.
//

import SwiftUI

struct SectionView: View {
    
    @State var rotationAngle: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotationAngle ? -90 : 90))
            Spacer()
        }
        .background(Constant.Colors.colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotationAngle: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(Constant.Colors.colorBackground)
    }
}
