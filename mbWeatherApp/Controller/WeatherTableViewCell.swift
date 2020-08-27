//
//  WeatherTableViewCell.swift
//  mbWeatherApp
//
//  Created by Mark Battistella on 9/8/20.
//  Copyright © 2020 Mark Battistella. All rights reserved.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {

	var apiIconString: String = ""
	
	@IBOutlet weak var forecastCellIconImage: UIImageView!
	@IBOutlet weak var forecastCellTemperatureLabel: UILabel!
	@IBOutlet weak var forecastCellWindSpeedLabel: UILabel!
	@IBOutlet weak var forecastCellWindBearingLabel: UILabel!
	@IBOutlet weak var forecastCellSummaryLabel: UILabel!
	@IBOutlet weak var forecastCellTimeRecordedLabel: UILabel!
	
	
	@IBOutlet weak var forecastCellTemperatureHighLabel: UILabel!
	@IBOutlet weak var forecastCellTemperatureLowLabel: UILabel!
	
	
	
	
    override func awakeFromNib() {
        super.awakeFromNib()

		
		
//		forecastCellIconImage.setBackgroundImage(convertWeatherIcons(apiString: iconStringTitle), for: .normal)
	}

	
	
	
	
	

	
	enum WeatherIcons: String, CaseIterable {
		case clearDay			= "clear-day"
		case clearNight			= "clear-night"
		case partCloudDay		= "partly-cloudy-day"
		case partCloudNight		= "partly-cloudy-night"
		case cloud				= "cloudy"
		case rain				= "rain"
		case sleet				= "sleet"
		case snow				= "snow"
		case wind				= "wind"
		case fog				= "fog"
		
		
		//	static let clearDay			= UIImage(systemName: "sun.max.fill")		//
		//	static let clearNight		= UIImage(systemName: "moon.stars.fill")	//
		//	static let partCloudDay		= UIImage(systemName: "cloud.sun.fill")		//
		//	static let partCloudNight	= UIImage(systemName: "cloud.moon.fill")	//
		//	static let cloud			= UIImage(systemName: "cloud.fill")			//
		//	static let rain				= UIImage(systemName: "cloud.rain.fill")	//
		//	static let sleet			= UIImage(systemName: "cloud.sleet.fill")	//
		//	static let snow				= UIImage(systemName: "cloud.snow.fill")	//
		//	static let wind				= UIImage(systemName: "wind")				//
		//	static let fog				= UIImage(systemName: "fog")				//
		
		
	}
	
	
}
