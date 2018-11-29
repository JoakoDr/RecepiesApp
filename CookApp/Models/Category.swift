//
//  File.swift
//  CookApp
//
//  Created by JOAQUIN DIAZ RAMIREZ on 28/11/18.
//  Copyright © 2018 JOAQUIN DIAZ RAMIREZ. All rights reserved.
//

import Foundation
class Category {
    var title:String
    var description:String
    var urlImg:String
    var recepies: [Recepies] = []
    
    init(lblTitle1:String, lblNumber:String, urlImg:String, recepies:[Recepies])
    {
        self.title = lblTitle1
        self.description = lblNumber
        self.urlImg = urlImg
        self.recepies = recepies
    }
}
