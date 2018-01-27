//
//  ProductController.swift
//  Prueba
//
//  Created by spychatter mx on 1/18/18.
//  Copyright © 2018 trenx. All rights reserved.
//

import Foundation

class ProductController{
	
	let manager = Managers()
	
	func getProducts(name:String, completion: @escaping (_ success: Bool,_ object: Any?) -> Void ){
		manager.getProducts(name: name) {success, object in
			switch success{
			case true:
				completion(true, object)
			case false:
				guard let messageError = object as? String else{return completion(false, "No message error")}
				completion(false, messageError)
			}
		}
	}
}
