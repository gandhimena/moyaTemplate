//
//  Parsers.swift
//  Prueba
//
//  Created by spychatter mx on 1/17/18.
//  Copyright © 2018 trenx. All rights reserved.
//

import Foundation

class Parsers {
	
	private func serializeResponse(mapString:String) -> [String:Any]?{
		return try! JSONSerialization.jsonObject(with: mapString.data(using: .utf8)!, options: [.allowFragments]) as? [String:Any]
	}
	
	func parseGetProducts(mapString: String, completion: @escaping (_ success:Bool,_ object: Any?) -> Void){
		guard let dataJSON = serializeResponse(mapString: mapString) else {
			return completion(false, ErrorNetworkType.badSerialized(desc: "badSerialized"))}
		print(dataJSON)
        guard let dataResponse = dataJSON as? NSDictionary else {
            return completion(false,ErrorNetworkType.badCasting(desc: "badCasting"))}
        
        let user = User.from(dataResponse)
        completion(true, user)
        
	}
	
}
