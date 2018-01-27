//
//  Records.swift
//  Prueba
//
//  Created by spychatter mx on 1/17/18.
//  Copyright © 2018 trenx. All rights reserved.
//

import Foundation
import Mapper

struct Records: Mappable {
	let attributess: [Attributess]?
	
	init(map: Mapper) throws {
		attributess = map.optionalFrom("attributes")
	}
	
}
