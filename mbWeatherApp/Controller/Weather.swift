//
//  Weather.swift
//  mbWeatherApp
//
//  Created by Mark Battistella on 5/8/20.
//  Copyright © 2020 Mark Battistella. All rights reserved.
//

import Foundation

struct Weather: Decodable {
	
	var summary:				String	// summary
	var temperature:			Double	// temperature
	var apparentTemperature:	Double	// apparentTemperature
	var windSpeed:				Double	// windSpeed
	var windBearing: 			Double	// windBearing
	var icon:					String	// icon
}
