//
//  SceneDelegate.swift
//  mbWeatherApp
//
//  Created by Mark Battistella on 30/7/20.
//  Copyright © 2020 Mark Battistella. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

	var window: UIWindow?


	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

		guard let windowScene = (scene as? UIWindowScene) else { return }
		
		self.window = UIWindow(windowScene: windowScene)

//		CitiesTableViewController
//		ForecastTableViewController
//		WeatherTableViewController
		
		
		
		let storyboard = UIStoryboard(name: "Main", bundle: nil)

			guard let navigationController = storyboard.instantiateViewController(identifier: "NavigationController") as? UINavigationController else {
			print("ViewController not found")
			return
		}

		if let foundForecastSelection = UserDefaults.standard.string(forKey: "pinnedCitySelection"),
			let foundForecastCity = UserDefaults.standard.string(forKey: "pinnedCityName"),
			let foundForecastLatitude = UserDefaults.standard.string(forKey: "pinnedCityLatitude"),
			let foundForecastLongitude = UserDefaults.standard.string(forKey: "pinnedCityLongitude") {

			if let citiesVC = storyboard.instantiateViewController(identifier: "CitiesTableViewController") as? CitiesTableViewController,
				let forecastVC = storyboard.instantiateViewController(identifier: "ForecastTableViewController") as? ForecastTableViewController,
				let weatherVC = storyboard.instantiateViewController(identifier: "WeatherTableViewController") as? WeatherTableViewController {

				let city = City(name: foundForecastCity, latitude: foundForecastLatitude, longitude: foundForecastLongitude)

								
				weatherVC.currentCity = city.name
				weatherVC.currentLatitude = city.latitude
				weatherVC.currentLongitude = city.longitude
				
				if foundForecastSelection == ForecastSwitch.currentForecast.rawValue {
					weatherVC.currentSelection = .currentForecast
				} else if foundForecastSelection == ForecastSwitch.dailyForecast.rawValue {
					weatherVC.currentSelection = .dailyForecast
				} else if foundForecastSelection == ForecastSwitch.weeklyForecast.rawValue {
					weatherVC.currentSelection = .weeklyForecast
				}

				forecastVC.currentCity = city.name
				forecastVC.currentLatitude = city.latitude
				forecastVC.currentLongitude = city.longitude

				navigationController.viewControllers = [citiesVC, forecastVC, weatherVC]
			}
		}

		self.window?.rootViewController = navigationController
		self.window?.makeKeyAndVisible()
		
		
		
	}

	func sceneDidDisconnect(_ scene: UIScene) {
		// Called as the scene is being released by the system.
		// This occurs shortly after the scene enters the background, or when its session is discarded.
		// Release any resources associated with this scene that can be re-created the next time the scene connects.
		// The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
	}

	func sceneDidBecomeActive(_ scene: UIScene) {
		// Called when the scene has moved from an inactive state to an active state.
		// Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
	}

	func sceneWillResignActive(_ scene: UIScene) {
		// Called when the scene will move from an active state to an inactive state.
		// This may occur due to temporary interruptions (ex. an incoming phone call).
	}

	func sceneWillEnterForeground(_ scene: UIScene) {
		// Called as the scene transitions from the background to the foreground.
		// Use this method to undo the changes made on entering the background.
	}

	func sceneDidEnterBackground(_ scene: UIScene) {
		// Called as the scene transitions from the foreground to the background.
		// Use this method to save data, release shared resources, and store enough scene-specific state information
		// to restore the scene back to its current state.
	}


}

