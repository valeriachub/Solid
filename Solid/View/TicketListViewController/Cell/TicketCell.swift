//
//  TableViewCell.swift
//  Solid
//
//  Created by Valeria on 23.09.2018.
//  Copyright © 2018 Valeria. All rights reserved.
//

import UIKit

class TicketCell: UITableViewCell {
    
    //MARK: - Properties
    
    var plus : (()->())?
    var minus : (()->())?
    
    //MARK: - Outlets
    
    @IBOutlet weak var sectionView: UILabel!
    
    //MARK: - Initialization Methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        selectionStyle = .none
    }
    
    //MARK: - Actions

    @IBAction func plusClicked(_ sender: UIButton) {
        if let plus = plus {
            plus()
        }
    }
    
    @IBAction func minusClicked(_ sender: UIButton) {
        if let minus = minus {
            minus()
        }
    }
}
