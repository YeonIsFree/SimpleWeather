//
//  CurrentWeather.swift
//  SimpleWeather
//
//  Created by Seryun Chun on 2024/02/10.
//

import Foundation
import Alamofire

// 현재 날씨

// "https://api.openweathermap.org/data/2.5/weather? id=1846266&appid=e88b90bc866ead095a8ee460c4097e00"

struct CurrentWeatherModel: Decodable {
    let coord: Location
    let weather: [Weather]
    let main: Main
    let dt: Int
    let name: String
}

struct Location: Decodable {
    let lon: Double
    let lat: Double
}

struct Weather: Decodable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

struct Main: Decodable {
    let temp: Double
    let temp_min: Double
    let temp_max: Double
    let humidity: Double
}

func fetchCurrentWeather(cityID: Int, completionHandler: @escaping (CurrentWeatherModel) -> Void ) {
    let urlString: String = "https://api.openweathermap.org/data/2.5/weather?id=\(cityID)&appid=\(APIKey.openWeather)"
    
    AF
        .request(urlString, method: .get)
        .responseDecodable(of: CurrentWeatherModel.self) { response in
            switch response.result {
            case .success(let success):
                completionHandler(success)
            case .failure(let failure):
                print(failure)
            }
        }
}
