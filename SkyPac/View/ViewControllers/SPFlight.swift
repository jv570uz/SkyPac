//
//  SPFlight.swift
//  SkyPac
//
//  Created by Jozef Vrana on 26/07/2019.
//  Copyright © 2019 Jozef Vrana. All rights reserved.
//

import Foundation
import UIKit

struct SPFlight: Decodable {
    var searchID: String?
    var flightData: [FlightData]?
    var time: Int?
    var currency: String?
    
    enum CodingKeys: String, CodingKey {
        case searchID = "search_id"
        case flightData = "data"
    }
}

struct FlightData: Decodable {
    
    var id: String?
    var countryFrom: Country?
    var countryTo: Country?
    var departureTimeUTC: Int?
    var mapIdfrom: String?
    var mapIdTo: String?
    var mapImage: UIImage?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case countryFrom = "countryFrom"
        case countryTo = "countryTo"
        case departureTimeUTC = "dTimeUTC"
        case mapIdfrom = "mapIdfrom"
        case mapIdTo = "mapIdto"
    }
}

struct Country: Decodable {
    var code: String?
    var name: String?
    
    enum CodingKeys: String, CodingKey {
        case code = "code"
        case name = "name"
    }
}

