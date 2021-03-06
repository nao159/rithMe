//
//  Book.swift
//  rithMe
//
//  Created by Максим Нуждин on 28.05.2021.
//

import Foundation
import Combine

class Book: ObservableObject {
    
    @Published var author: String
    @Published var title: String
    @Published var description: String?
    @Published var microReview: String
    @Published var readMe: Bool
    
    init(title: String = "", author: String = "" , description: String = "", microReview: String = "", readMe: Bool = true) {
        self.title = title
        self.author = author
        self.description = description
        self.microReview = microReview
        self.readMe = readMe
    }
}

extension Book: Equatable {
    static func == (lhs: Book, rhs: Book) -> Bool {
        lhs === rhs
    }
}

extension Book: Hashable, Identifiable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
