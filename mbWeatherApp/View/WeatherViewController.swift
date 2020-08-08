//
//  WeatherViewController.swift
//  mbWeatherApp
//
//  Created by Mark Battistella on 5/8/20.
//  Copyright © 2020 Mark Battistella. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {
	
	
	//
	var currentCity:		String = ""
	var currentLatitude:	String = ""
	var currentLongitude:	String = ""
	var currentSelection:	String = ""

	var weatherManager = WeatherManager()
	

	override func viewDidLoad() {
        super.viewDidLoad()

		let cityWeather = weatherManager.fetchWeather(latitude: currentLongitude, longitude: currentLatitude)
		
//		WeatherManager.parseJSON(<#T##self: WeatherManager##WeatherManager#>)
		
//		switch currentSelection {
//			case ForecastSwitch.currentForecast:
//				view.backgroundColor = .cyan
//
//				navigationItem.title = "Current forecast"
//
//			case ForecastSwitch.dailyForecast:
//				navigationItem.title = "Today's forecast"
//				view.backgroundColor = .red
//
//			case ForecastSwitch.weeklyForecast:
//				navigationItem.title = "Weekly forecast"
//				view.backgroundColor = .green
//
//			default:
//				view.backgroundColor = .clear
//
//		}
	}
}


extension WeatherViewController {
}
