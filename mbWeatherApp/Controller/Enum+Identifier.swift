//
//  Enum+Identifier.swift
//  mbWeatherApp
//
//  Created by Mark Battistella on 3/8/20.
//  Copyright © 2020 Mark Battistella. All rights reserved.
//

import UIKit

// no stringy -> Cells
enum CellIdentifier {
	static let cityCell			= "CityIdentifierCell"
}

// no stringy -> Segue
enum SegueIdentifier {
	// from city to forecast type
	static let forecastVC		= "ToForecastSegue"
	
	// from forecast type to view
	static let currentForecast	= "ToCurrentForecast"
	static let dailyForecast	= "ToDailyForecast"
	static let weeklyForecast	= "ToWeeklyFoecast"
}

// stringly typed: switch VC
enum ForecastSwitch {
	// from staticlist
	static let currentForecast	= "Current weather"
	static let dailyForecast	= "24-hour Forecast"
	static let weeklyForecast	= "7-day Forecast"
}



// a6e28ff5e884528d6ba481cd0c3ac017 api
// 50.0647,19.9450






enum WeatherIcons {
	static let clearDay			= UIImage(systemName: "sun.max.fill")		// clear-day
	static let clearNight		= UIImage(systemName: "moon.stars.fill")	// clear-night
	static let partCloudDay		= UIImage(systemName: "cloud.sun.fill")		// partly-cloudy-day
	static let partCloudNight	= UIImage(systemName: "cloud.moon.fill")	// partly-cloudy-night
	static let cloud			= UIImage(systemName: "cloud.fill")			// cloudy
	static let rain				= UIImage(systemName: "cloud.rain.fill")	// rain
	static let sleet			= UIImage(systemName: "cloud.sleet.fill")	// sleet
	static let snow				= UIImage(systemName: "cloud.snow.fill")	// snow
	static let wind				= UIImage(systemName: "wind")				// wind
	static let fog				= UIImage(systemName: "fog")				// fog
}
