//
//  HeaderArrowView.swift
//  Coding Bootcamp Testimonials Slider (iOS)
//
//  Created by Jinwook Kim on 2022/05/03.
//

import SwiftUI

struct HeaderArrowView: View {
    @EnvironmentObject var globalState: GlobalState
    let pageIndex: Int
    var body: some View {
        ZStack {
            Capsule(style: .continuous)
                .fill(Color.white)
                .frame(width: 100, height: 50)
                .shadow(radius: 10)
            HStack {
                Button {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: .zero)) {
                        globalState.prevPage(with: pageIndex)
                    }
                } label: {
                    Image("PrevIcon")
                        .resizable()
                        .frame(width: 12, height: 18)
                        .padding()
                }
                Spacer()
                Button {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: .zero)) {
                        globalState.nextPage(with: pageIndex)
                    }
                } label: {
                    Image("NextIcon")
                        .resizable()
                        .frame(width: 12, height: 18)
                        .padding()
                }
            }
        }
        .fixedSize(horizontal: true, vertical: true)
    }
}

struct HeaderArrowView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderArrowView(globalState: .init(), pageIndex: .zero)
            .padding()
            .previewLayout(.sizeThatFits)
            .environmentObject(GlobalState())
    }
}
