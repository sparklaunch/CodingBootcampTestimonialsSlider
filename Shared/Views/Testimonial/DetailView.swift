//
//  DetailView.swift
//  Coding Bootcamp Testimonials Slider (iOS)
//
//  Created by Jinwook Kim on 2022/05/03.
//

import SwiftUI

struct DetailView: View {
    let detail: String
    let name: String
    let status: String
    var body: some View {
        VStack(spacing: 24) {
            Text("\" \(detail) \"")
                .font(.body)
                .fontWeight(.light)
                .foregroundColor(Color("TitleColor"))
                .multilineTextAlignment(.center)
                .lineSpacing(5)
            VStack {
                Text(name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color("TitleColor"))
                Text(status)
                    .font(.footnote)
                    .fontWeight(.regular)
                    .foregroundColor(Color("BodyColor"))
            }
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(detail: "Hello World!!", name: "Jinwook Kim", status: "Unemployed")
            .previewLayout(.sizeThatFits)
    }
}
