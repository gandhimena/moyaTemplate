//
//  Attributess.swift
//  Prueba
//
//  Created by spychatter mx on 1/18/18.
//  Copyright © 2018 trenx. All rights reserved.
//

import Foundation
import Mapper

struct Attributess: Mappable {
	var title: [String]?
	var price: [String]?
	var location: [String]?
	var url_thumb: [String]?
	
	init(map: Mapper) throws {
		title = map.optionalFrom("product.displayName")
		price = map.optionalFrom("sku.sale_Price")
		location = map.optionalFrom("availabilityShopEndDate")
		url_thumb = map.optionalFrom("product.smallImage")
	}
	
}
