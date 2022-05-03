//
//  HeaderArrowView.swift
//  Coding Bootcamp Testimonials Slider (iOS)
//
//  Created by Jinwook Kim on 2022/05/03.
//

import SwiftUI

struct HeaderArrowView: View {
    var body: some View {
        ZStack {
            Capsule(style: .continuous)
                .fill(Color.white)
                .frame(width: 100, height: 50)
                .shadow(radius: 10)
            HStack {
                Image("PrevIcon")
                    .resizable()
                    .frame(width: 12, height: 18)
                    .padding()
                Spacer()
                Image("NextIcon")
                    .resizable()
                    .frame(width: 12, height: 18)
                    .padding()
            }
        }
        .fixedSize(horizontal: true, vertical: true)
    }
}

struct HeaderArrowView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderArrowView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
