//
//  GlobalState.swift
//  Coding Bootcamp Testimonials Slider (iOS)
//
//  Created by Jinwook Kim on 2022/05/03.
//

import Foundation

class GlobalState: ObservableObject {
    @Published var currentPage = 0
    let numberOfPages = 2
    func nextPage(with page: Int) {
        if page < numberOfPages - 1 {
            currentPage = (currentPage + 1) % numberOfPages
        }
    }
    func prevPage(with page: Int) {
        if page > .zero {
            currentPage = (currentPage - 1) % numberOfPages
        }
    }
}
