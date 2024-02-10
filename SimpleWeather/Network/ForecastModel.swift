//
//  ForecastModel.swift
//  SimpleWeather
//
//  Created by Seryun Chun on 2024/02/10.
//

import Foundation
import Alamofire

struct ForecastModel: Decodable {
    let list: [ForeCast]
}

struct ForeCast: Decodable {
    let dt: Int
    let main: Main
    let weather: [Weather]
}

func fetchForecast(cityID: Int, completionHandler: @escaping ([ForeCast]) -> Void ) {
    let urlString: String = "https://api.openweathermap.org/data/2.5/forecast?id=\(cityID)&appid=\(APIKey.openWeather)"
    
    AF
        .request(urlString, method: .get)
        .responseDecodable(of: ForecastModel.self) { response in
            switch response.result {
            case .success(let success):
//                dump(success)
                completionHandler(success.list)
            case .failure(let failure):
                print(failure)
            }
        }
}
