//
//  TicketRow.swift
//  Solid
//
//  Created by Valeria on 24.09.2018.
//  Copyright © 2018 Valeria. All rights reserved.
//

import Foundation
import UIKit

class TicketRow {
    
    func getTicketCell(ticket: Ticket, _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> TicketCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(TicketCell.self)", for: indexPath) as! TicketCell
        cell.sectionView.text = ticket.section
        
        cell.plus = {
            print ("plus")
        }
        
        cell.minus = {
            print("minus")
        }
        
        return cell
    }
}
