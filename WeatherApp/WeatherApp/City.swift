//
//  City.swift
//  WeatherApp
//
//  Created by 高坂まみ on 2019/06/15.
//  Copyright © 2019 高坂まみ. All rights reserved.
//

import Foundation
import SwiftyJSON

class City {
    let id: String
    let title: String
    
    init(city: JSON) {
        id = city["id"].stringValue
        title = city["title"].stringValue
    }
}
