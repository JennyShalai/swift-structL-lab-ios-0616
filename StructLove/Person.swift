//
//  Person.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Person {
    var firstName: String
    var lastName: String
    var isHungry = true
    var home: Coordinate
    
    init(firstName: String, lastName: String, home: Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
    }
    
    mutating func eatPizzaFrom(service: PizzaDeliveryService) -> Bool {
        if self.isHungry && service.isInRange(destination: home) {
            self.isHungry = false
            return true
        }
        return false
    }
}
