//
//  DateFormatter+.swift
//  SimpleWeather
//
//  Created by Seryun Chun on 2024/02/11.
//

import Foundation

extension DateFormatter {
    static func convertTime(_ raw: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH시"
        return formatter.string(from: raw)
    }
}
