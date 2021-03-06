//
//  HeaderView.swift
//  Coding Bootcamp Testimonials Slider (iOS)
//
//  Created by Jinwook Kim on 2022/05/03.
//

import SwiftUI

struct HeaderView: View {
    let pageIndex: Int
    let photo: Image
    var body: some View {
        photo
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .shadow(radius: 10)
            .overlay(
                HeaderArrowView(pageIndex: pageIndex)
                    .offset(x: .zero, y: 24)
                , alignment: .bottom
            )
            .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(pageIndex: .zero, photo: .init(decorative: "Tanya"))
            .padding(24)
            .previewLayout(.sizeThatFits)
    }
}
