//
//  Comments.swift
//  Prueba
//
//  Created by Gandhi Mena on 11/02/18.
//  Copyright © 2018 trenx. All rights reserved.
//

import Foundation
import Mapper

struct Comments: Mappable{
    var id: Int?
    var body: String?
    var postID: Int?
    
    init(map: Mapper) throws {
        id = map.optionalFrom("id")
        body = map.optionalFrom("body")
        postID = map.optionalFrom("postID")
    }
}
