//
//  Profile.swift
//  Prueba
//
//  Created by Gandhi Mena on 11/02/18.
//  Copyright © 2018 trenx. All rights reserved.
//

import Foundation
import Mapper

struct Profile: Mappable{
    var name: String?
    
    init(map: Mapper) throws {
        name = map.optionalFrom("name")
    }
}
