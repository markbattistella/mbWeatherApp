//
//  OutputTableViewController.swift
//  mbWeatherApp
//
//  Created by Mark Battistella on 9/8/20.
//  Copyright © 2020 Mark Battistella. All rights reserved.
//

import UIKit

class WeatherTableViewController: UITableViewController, WeatherManagerDelegate {
	
	// variables
	var currentCity:		String	= ""
	var currentLatitude:	String	= ""
	var currentLongitude:	String	= ""
	var currentSelection:	ForecastSwitch = .currentForecast
	var weatherManager		= WeatherManager()
	var weatherData: WeatherData?

	// IB: variable
	@IBOutlet weak var navigationPin: UIBarButtonItem!
	
	
	
	// MARK: - Begin loading
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// set the VC as the delegate
		weatherManager.delegate = self
		
		// get the data
		weatherManager.fetchWeather(latitude: currentLongitude, longitude: currentLatitude)
		
		//
		navigationItem.title = currentCity
		
		tableView.tableFooterView = UIView()
	}

	
	// MARK: - Protocol stubs
	
	// return the data
	func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherData) {
		DispatchQueue.main.async {
			self.weatherData = weather
			self.tableView.reloadData()
		}
	}
	
	// output the error
	func didFailWithError(error: Error) {
		print(error)
	}
	
	// MARK: - Table view data source
	
	// how many sections
	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	// switch numebr of rows on number of results
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		switch currentSelection {
			
			// fixed 1 for current
			case .currentForecast:
				return 1
			case .dailyForecast:
				return weatherData?.hourly.data.count ?? 0
			case .weeklyForecast:
				return weatherData?.daily.data.count ?? 0
		}
	}
	
	// pass data onto the cell for formatting
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		// use the reusable identifier
		// guard is for returning the error if failed
		guard let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.weatherCell.rawValue) as? WeatherTableViewCell else {
			fatalError("Could not dequeue a cell")
		}
		
		switch currentSelection {
			case ForecastSwitch.currentForecast,
				 ForecastSwitch.dailyForecast:
//				if let data = weatherData?.currently {
				if let data = weatherData?.hourly.data[indexPath.row] {

					
					
//				if let data = weatherData?.hourly.data[indexPath.row] ?? weatherData?.currently {
			
				


					// icon
//					print(data.icon)
					
					cell.apiIconString = data.icon
	
					// time
					
					cell.forecastCellTimeRecordedLabel.text = apiDateFormatter(apiDouble: data.time)
					
					
					//cell.forecastCellTimeRecordedLabel.text = localDate
					// temperature
					// summary
					// windBearing
					// windSpeed
					
					
					cell.forecastCellSummaryLabel.text = data.summary
				}

			// weekly has highTemp-lowTemp
			case ForecastSwitch.weeklyForecast:
				if let data = weatherData?.daily.data[indexPath.row] {
					cell.forecastCellSummaryLabel.text = data.summary
				}
		}
		return cell
	}
	
	// fixed row sizing
	override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 180
	}
}

// functions
extension WeatherTableViewController {
	
	func apiDateFormatter(apiDouble: Double) -> String {
		let date = Date(timeIntervalSince1970: apiDouble)
		let dateFormatter = DateFormatter()
		dateFormatter.timeStyle = DateFormatter.Style.medium //Set time style
		dateFormatter.dateStyle = DateFormatter.Style.medium //Set date style
		dateFormatter.timeZone = .current
		let localDate = dateFormatter.string(from: date)
		
		return localDate
	}
	
}
