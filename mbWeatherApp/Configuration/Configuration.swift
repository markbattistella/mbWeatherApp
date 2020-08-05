//
//  Configuration.swift
//  mbWeatherApp
//
//  Created by Mark Battistella on 5/8/20.
//  Copyright © 2020 Mark Battistella. All rights reserved.
//

import Foundation

struct API {
	static let APIKey = "a6e28ff5e884528d6ba481cd0c3ac017"
	static let BaseURL = URL(string: "https://api.darksky.net/forecast/")!
	
	static var AuthenticatedBaseURL: URL {
		return BaseURL.appendingPathComponent(APIKey)
	}

}
