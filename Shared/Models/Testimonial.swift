//
//  Testimonial.swift
//  Coding Bootcamp Testimonials Slider (iOS)
//
//  Created by Jinwook Kim on 2022/05/03.
//

import SwiftUI

struct Testimonial {
    let name: String
    let photo: Image
    let text: String
    let status: String
}

// MARK: Testimonial conforms to Hashable.

extension Testimonial: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}

// MARK: TestimonialStore Class.

class TestimonialStorage: ObservableObject {
    @Published var testimonials: [Testimonial] = [
        .init(name: "Tanya Sinclair", photo: Image("Tanya"), text: """
I've been interested in coding for a while but never taken the jump, until now. I couldn't recommend this course enough. I'm now in the job of my dreams and so excited about the future.
""", status: "UX Engineer"),
        .init(name: "John Tarkpor", photo: Image("John"), text: """
If you want to lay the best foundation possible, I'd recommend taking this course. The depth the instructors go into is incredible. I now feel so confident about starting up as a professional developer.
""", status: "Junior Front-end Developer")
    ]
}
