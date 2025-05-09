//
//  APIService.swift
//  Habits App
//
//  Created by user@59 on 30/08/1946 Saka.
//

import Foundation

struct HabitRequest: APIRequest {
    typealias Response = [String: Habit]

    var habitName: String?

    var path: String { "/habits" }
}
