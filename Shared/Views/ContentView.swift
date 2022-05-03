//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/05/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            TestimonialPageView()
        }
        .tabViewStyle(.page)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
