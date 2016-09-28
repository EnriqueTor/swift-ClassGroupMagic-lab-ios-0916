//
//  Coordinate.swift
//  PeopleAndPizza
//
//  Created by Enrique Torrendell on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation





class Coordinate {
    
    var latitude : Double
    var longitude : Double
    
    
    var isInNorthernHemisphere : Bool {
        if latitude >= 0 {
        return true
        }
        return false
    }
    
    var isInSoutherHemisphere : Bool {
        if latitude < 0 {
            return true
        }
        return false
    }
        
    var isInWesternHemisphere : Bool {
        if longitude >= 0 {
            return true
        }
        return false
    }
    
    var isInEasternHemisphere : Bool {
        if longitude < 0 {
            return true
        }
        return false
    }
    
    func distanceTo(coordinate: Coordinate) -> Double {
    
        let latitude1 = latitude.radians
        let latitude2 = latitude.radians
        let longitude1 = longitude.radians
        let longitude2 = longitude.radians
        
        return acos(sin(latitude1) * sin(latitude2) + cos(latitude1) * cos(latitude2) * cos(longitude1-longitude2)) * 6371.0
    }
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
}

extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}

