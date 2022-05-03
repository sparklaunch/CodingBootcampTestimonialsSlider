//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/05/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TestimonialPageView()
            TestimonialPageView()
        }
        .tabViewStyle(.page)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
