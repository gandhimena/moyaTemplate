//
//  Constants.swift
//  Prueba
//
//  Created by spychatter mx on 1/17/18.
//  Copyright © 2018 trenx. All rights reserved.
//

import Foundation

struct ServerAPI {
	static let baseURL = "https://www.muhost.com.mx"
}


enum ErrorNetworkType{
	case noInternetConnection(desc:String)
	case badRequest(desc:String)
	case badSerialized(desc:String)
	case badCasting(desc:String)
	case serverError(desc:String)
}

struct RequestKeys{
	static let success = "success"
	static let data = "data"
}
