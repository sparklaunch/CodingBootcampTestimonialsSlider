//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/05/03.
//

import SwiftUI

struct ContentView: View {
    @StateObject var globalState: GlobalState = .init()
    @ObservedObject var testimonialStorage: TestimonialStorage
    var body: some View {
        ZStack {
            BackgroundView()
            TabView(selection: $globalState.currentPage) {
                ForEach(Array(testimonialStorage.testimonials.enumerated()), id: \.element) { index, testimonial in
                    TestimonialPageView(pageIndex: index, testimonial: testimonial)
                        .tag(index)
                }
            }
            .tabViewStyle(.page)
            .edgesIgnoringSafeArea(.all)
        }
        .environmentObject(globalState)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(testimonialStorage: .init())
    }
}
