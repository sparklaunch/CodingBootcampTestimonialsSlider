//
//  TestimonialPageView.swift
//  Coding Bootcamp Testimonials Slider (iOS)
//
//  Created by Jinwook Kim on 2022/05/03.
//

import SwiftUI

struct TestimonialPageView: View {
    let testimonial: Testimonial
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                HeaderView(photo: testimonial.photo)
            }
        }
    }
}

struct TestimonialPageView_Previews: PreviewProvider {
    static var previews: some View {
        TestimonialPageView(testimonial: TestimonialStorage().testimonials.first!)
    }
}
