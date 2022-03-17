//
//  LogoView.swift
//  Touchdown
//
//  Created by Hamza Azhar on 18/03/2022.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        self.buildCenterLogoForNavBar()
    }
    
    fileprivate func buildCenterLogoForNavBar() -> some View {
        return(HStack(spacing: 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-lineal")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
        })
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
