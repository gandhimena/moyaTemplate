//
//  PruebaEndpoint.swift
//  Prueba
//
//  Created by spychatter mx on 1/17/18.
//  Copyright © 2018 trenx. All rights reserved.
//

import Foundation
import Moya

private extension String{
	var urlEscaped: String{
		return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
	}
	var utf8Encoding: Data{
		return data(using: .utf8)!
	}
}


enum PruebaEndpoint{
	case defaults
	case getProducts
}

extension PruebaEndpoint: TargetType{
	var baseURL: URL{ return URL(string: ServerAPI.baseURL)! }
	
	var headers: [String : String]?{
		switch self {
		case .defaults:
			return ["Content-Type":"application/json"]
		case .getProducts:
			return nil
		}
	}
	
	var path: String{
		switch self {
		case .getProducts:
            return "/fakeApi/db"
			//return "/tienda?s=\(name)&d3106047a194921c01969dfdec083925=json"
		case .defaults:
			return ""
		}
	}
	
	var method: Moya.Method{
		switch self {
		case .getProducts:
			return .get
		default:
			return .get
		}
		
	}
	
	var sampleData: Data{
		switch self {
		default:
			return "".utf8Encoding
		}
	}
	
	var task: Task{
		switch self {
		case .defaults:
			return .requestPlain
		default:
			return .requestPlain

		}
		
	}
	
}
