//
//  Habit.swift
//  Habits App
//
//  Created by user@59 on 30/08/1946 Saka.
//

import Foundation

struct Habit {
    let name: String
    let category: Category
    let info: String
}


extension Habit: Codable {

}

extension Habit: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }

    static func == (lhs: Habit, rhs: Habit) -> Bool {
        return lhs.name == rhs.name
    }
}
