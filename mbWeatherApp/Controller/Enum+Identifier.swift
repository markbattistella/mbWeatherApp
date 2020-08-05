//
//  Enum+Identifier.swift
//  mbWeatherApp
//
//  Created by Mark Battistella on 3/8/20.
//  Copyright © 2020 Mark Battistella. All rights reserved.
//

import Foundation

// no stringy -> Cells
enum Cell {
	static let cityCell			= "CityIdentifierCell"
}

// no stringy -> Segue
enum Segue {
	// from city to forecast type
	static let forecastVC		= "ToForecastSegue"
	
	// from forecast type to view
	static let currentForecast	= "ToCurrentForecast"
	static let dailyForecast	= "ToDailyForecast"
	static let weeklyForecast	= "ToWeeklyFoecast"
}



// a6e28ff5e884528d6ba481cd0c3ac017 api
// https://api.darksky.net/forecast/a6e28ff5e884528d6ba481cd0c3ac017/50.0647,19.9450
