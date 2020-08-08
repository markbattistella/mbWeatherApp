//
//  Configuration.swift
//  mbWeatherApp
//
//  Created by Mark Battistella on 5/8/20.
//  Copyright © 2020 Mark Battistella. All rights reserved.
//

import Foundation

struct DarkSkyAPI {
	let base	= "https://api.darksky.net/forecast/"
	let key		= "a6e28ff5e884528d6ba481cd0c3ac017"
	
	func baseURL(longitude: String, latitude: String) -> String {
		return "\(base)\(key)/\(longitude),\(latitude)?exclude=minutely,alerts,flags"
	}
}
