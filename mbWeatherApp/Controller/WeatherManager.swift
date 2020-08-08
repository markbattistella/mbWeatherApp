//
//  Weather.swift
//  mbWeatherApp
//
//  Created by Mark Battistella on 5/8/20.
//  Copyright © 2020 Mark Battistella. All rights reserved.
//

import Foundation

struct WeatherManager {
	
	// initilise the API
	var weatherBase = DarkSkyAPI()
	
	// create the
	func fetchWeather(latitude: String, longitude: String) {
		
		// create the string
		let urlString = "\(weatherBase.baseURL(longitude: longitude, latitude: latitude))"
		
		// get the json data
		performRequest(apiURL: urlString)
	}
	
	//
	func performRequest(apiURL: String) {
		
		// 1. create url
		if let url = URL(string: apiURL) {
			
			// 2. create a url session
			let session = URLSession(configuration: .default)
			
			// 3. give the session a task
			let task = session.dataTask(with: url) { (data, response, error) in
				// stop if there is an error
				if error != nil {
					print(error!)
					return
				}
				
				if let safeData = data {
					// self to tell swift its inside this Class
					self.parseJSON(weatherData: safeData)
				}
			}
			
			// 4. start the task
			task.resume()
		}
		
	}
	
	func parseJSON(weatherData: Data) {
		let decoder = JSONDecoder()
		
		do {
			let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
			
//			print(decodedData.currently.apparentTemperature)
//			print(decodedData.daily.data[0].temperatureMax)
			
			//print(decodedData.hourly.data[0].apparentTemperature)
			
			
			
			
		} catch {
			print(error)
		}
	}

}
