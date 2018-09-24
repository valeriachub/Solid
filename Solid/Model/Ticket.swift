//
//  Ticket.swift
//  Solid
//
//  Created by Valeria on 24.09.2018.
//  Copyright © 2018 Valeria. All rights reserved.
//

import Foundation

class Ticket {
    
    var section : String?
    var price : Int?
    var available : Int?
    
    convenience init(section : String, price : Int, available : Int){
        self.init()
        
        self.section = section
        self.price = price
        self.available = available
    }
}
