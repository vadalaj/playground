//
//  Forecast.swift
//  playground
//
//  Created by Joseph Vadala on 2/19/20.
//  Copyright © 2020 community. All rights reserved.
//

import Foundation

struct Forecast {
    var day: Int = 0
    var highTemperature: Int = 0
    var lowTemperature: Int = 0
    var shortDescription: String = ""
    var icon: String = "☀️"
}

extension Forecast {
    static var forecasts = [["icon":"☀️", "shortDescription":"Sunny"], ["icon":"🌤", "shortDescription":"Mostly Sunny"], ["icon":"🌥", "shortDescription":"Partly Cloudy"], ["icon":"☁️", "shortDescription":"Cloudy"]]
    
    static var longForecasts = [["icon":"☀️", "shortDescription":"Sunny, with a long description that bounces to two lines and makes the table view layout quite a bit longer, maybe even growing to three lines?"], ["icon":"🌤", "shortDescription":"Mostly Sunny"], ["icon":"🌥", "shortDescription":"Sunny, but only a little - mostly clouds on this particular day, not a good day for a tan."], ["icon":"☁️", "shortDescription":"Cloudy"]]
    
    static func currentForecast() -> [Forecast] {
        
        return (1...7).map { day in
            let randomForecast = Forecast.longForecasts.randomElement()!
            return Forecast(day: day, highTemperature: Int.random(in: 65..<75), lowTemperature: Int.random(in: 55..<64), shortDescription: randomForecast["shortDescription"] ?? "no forecast", icon: randomForecast["icon"] ?? "❓")
        }
    }
}
