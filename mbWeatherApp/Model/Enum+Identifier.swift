//
//  Enum+Identifier.swift
//  mbWeatherApp
//
//  Created by Mark Battistella on 3/8/20.
//  Copyright © 2020 Mark Battistella. All rights reserved.
//

import UIKit

// no stringy -> Cells
enum CellIdentifier: String {
	case cityCell			= "CityIdentifierCell"
	case weatherCell		= "ForecastIdentifierCell"
}

// no stringy -> Segue
enum SegueIdentifier: String {
	// from city to forecast type
	case forecastVC			= "ToForecastSegue"
	
	// from forecast type to view
	case currentForecast	= "ToCurrentForecast"
	case dailyForecast		= "ToDailyForecast"
	case weeklyForecast		= "ToWeeklyForecast"
}

// stringly typed: switch VC
enum ForecastSwitch: String {
	// from staticlist
	case currentForecast	= "Current weather"
	case dailyForecast		= "24-hour Forecast"
	case weeklyForecast		= "7-day Forecast"
}
