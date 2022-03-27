//
//  RatingsDetailView.swift
//  Touchdown
//
//  Created by Hamza Azhar on 27/03/2022.
//

import SwiftUI

struct RatingsDetailView: View {
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            self.buildRatingsView()
            Spacer()
            self.buildSizesView()
        }
    }
    
    fileprivate func buildRatingsView() -> some View {
        return(VStack(alignment: .leading, spacing: 3) {
            Text("Ratings")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(Constant.Colors.colorGray)
            
            HStack(alignment: .center, spacing: 3) {
                ForEach(1...5, id: \.self) { item in
                    Button {
                        print("xyz")
                    } label: {
                        Image(systemName: "star.fill")
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(Constant.Colors.colorGray.cornerRadius(5))
                            .foregroundColor(.white)
                    }
                    
                }
            }
        })
    }
    
    fileprivate func buildSizesView() -> some View {
        return(VStack(alignment: .trailing, spacing: 3) {
            Text("Sizes")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(Constant.Colors.colorGray)
            
            HStack(alignment: .center, spacing: 5) {
                ForEach(sizes, id: \.self) { size in
                    Button {
                        print("xyz")
                    } label: {
                        Text(size)
                            .font(.footnote)
                            .fontWeight(.heavy)
                            .foregroundColor(Constant.Colors.colorGray)
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(Color.white.cornerRadius(5))
                            .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Constant.Colors.colorGray, lineWidth: 2)
                            )
                    }
                }
            }
        })
    }
}

struct RatingsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
