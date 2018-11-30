//
//  Recepies.swift
//  CookApp
//
//  Created by JOAQUIN DIAZ RAMIREZ on 28/11/18.
//  Copyright © 2018 JOAQUIN DIAZ RAMIREZ. All rights reserved.
//

import Foundation
class Recepies {
    var img:String
    var title:String
    var ingredients:String
    var creator:String
    var latitude:Double
    var longitude:Double
    
    init(imgURL: String, lblTitle1:String,ingredients:String,creator:String,latitude:Double,longitude:Double)
    {
        self.img = imgURL
        self.title = lblTitle1
        self.ingredients = ingredients
        self.creator = creator
        self.latitude = latitude
        self.longitude = longitude
    }
}
