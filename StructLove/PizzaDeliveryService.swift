//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct PizzaDeliveryService {
    var location: Coordinate
    var pizzasAvailable = 10
    
    init(location: Coordinate) {
        self.location = location
    }
    
    func isInRange(destination: Coordinate) -> Bool {
        if self.location.distanceTo(coordinate: destination) < 5000 {
            return true
        }
        return false
    }
    
    mutating func deliverPizzaTo(destination: Coordinate) -> Bool {
        if isInRange(destination: destination) && self.pizzasAvailable > 0 {
            self.pizzasAvailable -= 1
            return true
        }
        return false
    }
    
}
