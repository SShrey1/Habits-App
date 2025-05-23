//
//  Category.swift
//  Habits App
//
//  Created by user@59 on 30/08/1946 Saka.
//

import Foundation

struct Category {
    
    let name : String
    let color : Color
    
}

extension Category: Codable {
}

extension Category: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    static func == (lhs: Category, rhs: Category) -> Bool {
        return lhs.name == rhs.name
    }
}
