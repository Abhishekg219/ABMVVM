//
//  CarModel.swift
//  InteractSwift
//
//  Created by Abhishek on 02/06/17.
//  Copyright © 2017 DREAM WORKS. All rights reserved.
//

import UIKit

class ABCarModel: NSObject, NSCoding {

    /**
     make of the car
     */
    var make: String
    /**
     model of the car
     */
    var model: String
    /**
     image of the car
     */
    var photoURL: String
    /**
     killowats power of the car
     */
    var kilowatts: Int
    /**
     unique id of the car
     */
    var carId: String
    
    init(model: String, make: String, kilowatts: Int, photoURL: String, carId: String) {
        self.model = model
        self.make = make
        self.kilowatts = kilowatts
        self.photoURL = photoURL
        self.carId = carId
        super.init()

    }
    
    required init(coder aDecoder: NSCoder) {
        self.make = (aDecoder.decodeObject(forKey: "make") as? String)!
        self.model = (aDecoder.decodeObject(forKey: "model") as? String)!
        self.photoURL = (aDecoder.decodeObject(forKey: "photoURL") as? String)!
        self.kilowatts = aDecoder.decodeInteger(forKey: "kilowatts")
        self.carId = (aDecoder.decodeObject(forKey: "carId") as? String)!
    }
    
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(self.make, forKey: "make")
        aCoder.encode(self.model, forKey: "model")
        aCoder.encode(self.photoURL, forKey: "photoURL")
        aCoder.encode(self.kilowatts, forKey: "kilowatts")
        aCoder.encode(self.carId, forKey: "carId")
        
    }

}
