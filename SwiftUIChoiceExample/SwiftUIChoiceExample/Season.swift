//
// [swiftui-choice](https://github.com/ralfebert/swiftui-choice) is licensed under the MIT License
// © 2021 Ralf Ebert
//

import Foundation

enum Season: String, CaseIterable {
    case spring
    case summer
    case autumn
    case winter
}

extension Season {
    var localizedTitle: String {
        switch self {
        case .spring:
            return "🌷"
        case .summer:
            return "🌞"
        case .autumn:
            return "🍂"
        case .winter:
            return "☃️"
        }
    }
}
