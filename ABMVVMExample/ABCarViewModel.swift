//
//  CarViewModel.swift
//  InteractSwift
//
//  Created by Abhishek on 02/06/17.
//  Copyright © 2017 DREAM WORKS. All rights reserved.
//

import UIKit

class ABCarViewModel {
    /**
     Title of the news
     */
    var car: ABCarModel
    /**
     Title of the news
     */
    static let horsepowerPerKilowatt = 1.34102209
    /**
     Title of the news
     */
    var modelText: String {
        return car.model
    }
    /**
     Title of the news
     */
    var makeText: String {
        return car.make
    }
    /**
     Title of the news
     */
    var horsepowerText: String {
        let horsepower = Int(round(Double(car.kilowatts) * ABCarViewModel.horsepowerPerKilowatt))
        return "\(horsepower) HP"
    }
    /**
     Title of the news
     */
    var titleText: String {
        return "\(car.make) \(car.model)"
    }
    /**
     Title of the news
     */
    var photoURL: NSURL? {
        return NSURL(string: car.photoURL)
    }
    /**
     Title of the news
     */
    var photoName: String {
        return car.photoURL
    }
    /**
     Title of the news
     */
    var carId: String? {
        return car.carId
    }
    
    init(withCar: ABCarModel) {
        self.car = withCar
    }

}
