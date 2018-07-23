//
//  Product.swift
//  shopping
//
//  Created by MacStudent on 2018-07-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Product : IDisplay{
    func displayData() -> String {
        var returnData = ""
        returnData += "\n Product ID : \(self.productID ?? 0)"
        returnData += "\n Product ID : \(self.productName ?? "")"
        returnData += "\n Product ID : \(self.manufecturer ?? "")"
        returnData += "\n Product ID : \(self.unitPrice ?? 0.0)"
        returnData += "\n Category : \(self.category ?? ProductCategory.None)"
        return returnData
    }
  
    private var productID  : Int?
    private var productName : String?
    private var manufecturer : String?
    private var unitPrice : Double?
    private var category : ProductCategory?
    

    
init(){
    self.productID = 0
    self.productName = ""
    self.manufecturer = ""
    self.unitPrice = 0.0
    self.category = ProductCategory.None
    }
    init(productID: Int ,productName: String, manufecturer: String ,unitPrice: Double, category: ProductCategory ) {
        self.productID = productID
        self.productName = productName
        self.manufecturer = manufecturer
        self.unitPrice = unitPrice
        self.category = category
        
    }
    func newProduct(){
        print("Enter Product ID : ")
        self.productID = (Int)(readLine()!)
        print("Enter Product name : ")
        self.productName = readLine()
        print("Enter manufecturer : ")
        self.manufecturer = readLine()
        print("Enter unit price : ")
        self.unit price = readLine()
        
    }
}
