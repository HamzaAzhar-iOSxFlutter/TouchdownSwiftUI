//
//  QuantityDetailView.swift
//  Touchdown
//
//  Created by Hamza Azhar on 27/03/2022.
//

import SwiftUI

struct QuantityDetailView: View {
    @State private var counter: Int = 0
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            self.buildIncrementorView()
            self.buildCounterView()
            self.buildDecrementorView()
            Spacer()
            self.buildFavouriteView()

        }
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
    
    fileprivate func buildIncrementorView() -> some View {
        return(Button {
            if self.counter != 0 {
                Constant.Haptic.feedback.impactOccurred()
                self.counter -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        })
    }
    
    fileprivate func buildCounterView() -> some View {
        return(Text("\(self.counter)")
                    .fontWeight(.semibold)
                    .frame(minWidth: 36))
    }
    
    fileprivate func buildDecrementorView() -> some View {
        return(Button {
            Constant.Haptic.feedback.impactOccurred()
            self.counter += 1
        } label: {
            Image(systemName: "plus.circle")
        })
    }
    
    fileprivate func buildFavouriteView() -> some View {
        return(Button {
            Constant.Haptic.feedback.impactOccurred()
        } label: {
            Image(systemName: "heart.circle")
                .foregroundColor(.pink)
        })
    }
}

struct QuantityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
