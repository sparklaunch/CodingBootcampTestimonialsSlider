//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/05/03.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var testimonialStorage: TestimonialStorage
    var body: some View {
        ZStack {
            BackgroundView()
            TabView {
                ForEach(testimonialStorage.testimonials, id: \.self) { testimonial in
                    TestimonialPageView(testimonial: testimonial)
                }
            }
            .tabViewStyle(.page)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(testimonialStorage: .init())
    }
}
