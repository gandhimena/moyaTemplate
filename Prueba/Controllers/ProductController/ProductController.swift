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
	
	func getProducts(completion: @escaping (_ success: Bool,_ object: Any?) -> Void ){
		manager.getProducts() {success, object in
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
