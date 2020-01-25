//
//  ShopOnLine.swift
//  DessignPattersEfc
//
//  Created by eduardo fulgencio on 24/01/2020.
//  Copyright © 2020 Eduardo Fulgencio Comendeiro. All rights reserved.
//
 
struct Product {
    
    var name: String
    
}

protocol ProductDeliveryDelegate {
    
    func send(product: Product)
    
}

struct OnlineShop {
    
    private(set) var shopName: String
    private(set) var products = [Product]()
    private var productDeliveryDelegate: ProductDeliveryDelegate?
    
    init(shopName: String) {
        self.shopName = shopName
        
        let delivery = Delivery()
        productDeliveryDelegate = delivery
    }
    
    mutating func add(product: Product) {
        self.products.append(product)
    }
    
    func sendAllProducts() {
        for product in products {
            productDeliveryDelegate?.send(product: product)
        }
    }
    
}

class Delivery: ProductDeliveryDelegate {
    
    func send(product: Product) {
        
        print("\(product.name) sent!")
        
    }
    
}
