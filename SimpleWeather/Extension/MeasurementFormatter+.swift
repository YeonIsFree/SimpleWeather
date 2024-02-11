//
//  Formatter.swift
//  SimpleWeather
//
//  Created by Seryun Chun on 2024/02/11.
//

import Foundation

extension MeasurementFormatter {
    
    // Kelvin 온도 변환
    static func convertTemperature(_ raw: Double) -> String {
        let formatter = MeasurementFormatter()
        formatter.locale = Locale(identifier: "ko_kr")
        formatter.numberFormatter.maximumFractionDigits = 1
        formatter.unitOptions = .temperatureWithoutUnit
        
        let rawTemperature = Measurement(value: raw, unit: UnitTemperature.kelvin)
        return formatter.string(from: rawTemperature.converted(to: .celsius))
    }
}
