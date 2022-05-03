//
//  BackgroundView.swift
//  Coding Bootcamp Testimonials Slider (iOS)
//
//  Created by Jinwook Kim on 2022/05/03.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Image(decorative: "Curve")
                    .resizable()
                    .scaledToFit()
            }
            VStack {
                Image(decorative: "BackgroundPattern")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .padding(.top, 44)
                Spacer()
            }
            Image(decorative: "Quotes")
                .resizable()
                .scaledToFit()
                .scaleEffect(0.2)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
