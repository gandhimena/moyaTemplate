//
//  Managers.swift
//  Prueba
//
//  Created by spychatter mx on 1/17/18.
//  Copyright © 2018 trenx. All rights reserved.
//

import Foundation
import Moya
import Mapper

class Managers{
	
	private let provider = MoyaProvider<PruebaEndpoint>()
	private let parse = Parsers()
	
	func getProducts(name:String, completion: @escaping (_ success:Bool, _ object: Any?) -> Void){
		provider.request(.getProducts(productName: name)) {
			switch $0{
			case .success(let response):
				guard let mapString = try? response.mapString() else{ return completion(false, nil)}
				print("----------------------> \(mapString)")
				self.parse.parseGetProducts(mapString: mapString , completion: completion)
			case .failure(_):
				completion(false, ErrorNetworkType.serverError(desc: "Server Error"))
			}
		}
	}
	
}
