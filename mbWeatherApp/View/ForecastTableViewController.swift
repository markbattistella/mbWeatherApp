//
//  ForecastTableViewController.swift
//  mbWeatherApp
//
//  Created by Mark Battistella on 3/8/20.
//  Copyright © 2020 Mark Battistella. All rights reserved.
//

import UIKit

class ForecastTableViewController: UITableViewController {

	// variables
	var currentCity:		String = ""
	var currentLatitude:	String = ""
	var currentLongitude:	String = ""
	
	// IB variables
	@IBOutlet var tableLabelCollection: [UILabel]!


	// just load the Storyboard
	override func viewDidLoad() {
        super.viewDidLoad()
	}

    
	// MARK: - Navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		// set the destination VC
		let WeatherViewController = segue.destination as! WeatherViewController
		let indexPath = tableView.indexPathForSelectedRow!
		
		guard let selectedForecast = tableLabelCollection[indexPath.row].text else {
			print("No static row label text!")
			return
		}

		// what to pass on
		WeatherViewController.currentCity = currentCity
		WeatherViewController.currentLatitude = currentLatitude
		WeatherViewController.currentLongitude = currentLongitude
		WeatherViewController.currentSelection = selectedForecast
	}

}
