//
//  TicketData.swift
//  Solid
//
//  Created by Valeria on 24.09.2018.
//  Copyright © 2018 Valeria. All rights reserved.
//

import Foundation

class TicketData{
    
    func getTickets() -> [Ticket]{
        var tickets = [Ticket]()
        
        for _ in 0..<10 {
            let ticket = Ticket(section: getRandomString(length: 1), price: 30, available: 100)
            tickets.append(ticket)
        }
        
        return tickets
    }
    
    private func getRandomString(length randomStringLenght : Int) -> String {
        let letters : NSString = "ASDQWE"
        let lenght = UInt32(letters.length)
        
        var randomString = ""
        
        for _ in 0..<randomStringLenght {
            let randomNumber = arc4random_uniform(lenght)
            var character = letters.character(at: Int(randomNumber))
            randomString += NSString(characters: &character, length: 1) as String
        }
        return randomString
    }
}
