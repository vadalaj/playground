//
//  Forecast.swift
//  playground
//
//  Created by Joseph Vadala on 2/19/20.
//  Copyright © 2020 community. All rights reserved.
//

import Foundation

struct Forecast {
    var highTemperature: Int = 0
    var lowTemperature: Int = 0
    var shortDescription: String = ""
    var icon: String = "☀️"
}

extension Forecast {
    static var forecasts = [["icon":"☀️", "shortDescription":"Sunny"], ["icon":"🌤", "shortDescription":"Mostly Sunny"], ["icon":"🌥", "shortDescription":"Partly Cloudy"], ["icon":"☁️", "shortDescription":"Cloudy"]
    
    static func currentForecast() -> [Forecast] {
        
        return (1...7).map { _ in
            let randomForecast = Forecast.forecasts.randomElement()!
            return Forecast(highTemperature: Int.random(in: 65..<75), lowTemperature: Int.random(in: 55..<64), shortDescription: randomForecast["shortDescription"] ?? "no forecast", icon: randomForecast["icon"] ?? "❓")
        }
    }
}
