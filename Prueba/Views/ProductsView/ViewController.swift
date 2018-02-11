//
//  ViewController.swift
//  Prueba
//
//  Created by spychatter mx on 1/17/18.
//  Copyright © 2018 trenx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	let controller = ProductController()
	let productName = "computadora"
	
	override func viewDidLoad() {
		super.viewDidLoad()
        
		showProduct()
		
	}
	
    
	func showProduct(){
		controller.getProducts() { success, object in
			switch success{
			case true:
				print(object ?? "")
			case false:
				print(object ?? "")
			}
		}
	}



}

