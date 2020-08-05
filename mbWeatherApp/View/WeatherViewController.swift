//
//  WeatherViewController.swift
//  mbWeatherApp
//
//  Created by Mark Battistella on 5/8/20.
//  Copyright © 2020 Mark Battistella. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {

	@IBOutlet weak var test: UIView!
	
	//
	var currentCity:		String = ""
	var currentLatitude:	String = ""
	var currentLongitude:	String = ""
	var currentSelection:	String = ""
	
	
	
	override func viewDidLoad() {
        super.viewDidLoad()

		
		switch currentSelection {
			case "7-day Forecast":
				test.backgroundColor = .cyan

			case "Current weather":
				test.backgroundColor = .red

			case "24-hour Forecast":
				test.backgroundColor = .green
			
			default:
				test.backgroundColor = .clear

		}

	
		print(currentCity)
		print(currentLatitude)
		print(currentLongitude)
		print(currentSelection)

	
	}
}
