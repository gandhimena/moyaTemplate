//
//  Contents.swift
//  Prueba
//
//  Created by spychatter mx on 1/17/18.
//  Copyright © 2018 trenx. All rights reserved.
//

import Foundation
import Mapper

struct Contents: Mappable {
	var records: [Records]?
	
	init(map: Mapper) throws {
		records = map.optionalFrom("records")
	}
}
