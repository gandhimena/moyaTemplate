//
//  MainContents.swift
//  Prueba
//
//  Created by spychatter mx on 1/18/18.
//  Copyright © 2018 trenx. All rights reserved.
//

import Foundation
import Mapper

struct MainContents: Mappable{
	var contents: [Contents]?
	
	init(map: Mapper) throws {
		contents = map.optionalFrom("mainContent")
	}

}
