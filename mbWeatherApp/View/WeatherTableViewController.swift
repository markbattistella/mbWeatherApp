//
//  OutputTableViewController.swift
//  mbWeatherApp
//
//  Created by Mark Battistella on 9/8/20.
//  Copyright © 2020 Mark Battistella. All rights reserved.
//

import UIKit

class WeatherTableViewController: UITableViewController, WeatherManagerDelegate {

	//
	var currentCity:		String = ""
	var currentLatitude:	String = ""
	var currentLongitude:	String = ""
	var currentSelection:	String = ""

	var weatherManager = WeatherManager()
	
	
    override func viewDidLoad() {
        super.viewDidLoad()

		// set the VC as the delegate
		weatherManager.delegate = self

		// get the data
		weatherManager.fetchWeather(latitude: currentLongitude, longitude: currentLatitude)

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
		return 0
    }

	//
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		// use the reusable identifier
		// guard is for returning the error if failed
		guard let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.weatherCell) as? WeatherTableViewCell else {
			fatalError("Could not dequeue a cell")
		}

		
        return cell
    }



}



extension WeatherTableViewController {
	
	// return the data
	func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherData) {
		
		var a: [Int] = []
		
		for i in 0...6 {
			a.append(weather.hourly.data[i].time)
		}
		
		print(a)
		
	}
	
	// output the error
	func didFailWithError(error: Error) {
		print(error)
	}
}
