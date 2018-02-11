//
//  User.swift
//  Prueba
//
//  Created by Gandhi Mena on 11/02/18.
//  Copyright © 2018 trenx. All rights reserved.
//

import Foundation
import Mapper

struct User: Mappable{
    var posts: [Posts]?
    var comments: [Comments]?
    var profile: Profile?
    
    init(map: Mapper) throws {
        posts = map.optionalFrom("posts")
        comments = map.optionalFrom("comments")
        profile = map.optionalFrom("profile")
    }
    
    
}
