//
//  Post.swift
//  Prueba
//
//  Created by Gandhi Mena on 11/02/18.
//  Copyright © 2018 trenx. All rights reserved.
//

import Foundation
import Mapper

struct Posts: Mappable{
    var id: Int?
    var title: String?
    
    init(map: Mapper) throws {
        id = map.optionalFrom("id")
        title = map.optionalFrom("title")
    }
    
   
}
