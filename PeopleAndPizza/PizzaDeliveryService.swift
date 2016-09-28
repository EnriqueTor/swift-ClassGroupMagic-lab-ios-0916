//
//  PizzaDeliveryService.swift
//  PeopleAndPizza
//
//  Created by Enrique Torrendell on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation



class PizzaDeliveryService {
    
    var location : Coordinate
    var pizzasAvailable : Int
    
    init(location: Coordinate) {
        self.location = location
        pizzasAvailable = 10
    }
    
    func isInRange(destination: Coordinate) -> Bool {
        if destination.distanceTo(coordinate: location) < 5000.0 {
            return true
        }
        return false
    }
    
    func deliverPizzaTo(destination: Coordinate) -> Bool {
        
        if isInRange(destination: destination) && pizzasAvailable > 0 {
            pizzasAvailable -= 1
            return true
        }
        return false
    }
}

