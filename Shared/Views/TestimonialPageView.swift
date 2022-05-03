//
//  TestimonialPageView.swift
//  Coding Bootcamp Testimonials Slider (iOS)
//
//  Created by Jinwook Kim on 2022/05/03.
//

import SwiftUI

struct TestimonialPageView: View {
    let pageIndex: Int
    let testimonial: Testimonial
    var body: some View {
        VStack {
            HeaderView(pageIndex: pageIndex, photo: testimonial.photo)
                .padding(36)
            DetailView(detail: testimonial.text, name: testimonial.name, status: testimonial.status)
                .padding(24)
        }
    }
}

struct TestimonialPageView_Previews: PreviewProvider {
    static var previews: some View {
        TestimonialPageView(pageIndex: .zero, testimonial: TestimonialStorage().testimonials.first!)
    }
}
