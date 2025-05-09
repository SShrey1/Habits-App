//
//  Color.swift
//  Habits App
//
//  Created by user@59 on 30/08/1946 Saka.
//

import Foundation

struct Color {
    let hue : Double
    let saturation : Double
    let brightness : Double
}

extension Color: Codable {
    enum CodingKeys: String, CodingKey {
        case hue = "h"
        case saturation = "s"
        case brightness = "b"
    }
}
