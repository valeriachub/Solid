//
//  HomeViewController.swift
//  Solid
//
//  Created by Valeria on 24.09.2018.
//  Copyright © 2018 Valeria. All rights reserved.
//

import UIKit

class TicketListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: - Properties
    
    var tickets = [Ticket]()

    //MARK: - Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ticketData = TicketData()
        tickets = ticketData.getTickets()
        
        setupTableView()
    }
    
    //MARK: - Setup Methods
    
    func setupTableView(){
        tableView.register(UINib(nibName: "\(TicketCell.self)", bundle: nil), forCellReuseIdentifier: "\(TicketCell.self)")
        tableView.tableFooterView = UITableViewCell()
        tableView.rowHeight = 140.0
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //MARK: - UITableViewDataSource Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tickets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return TicketRow().getTicketCell(ticket: tickets[indexPath.row], tableView, cellForRowAt: indexPath)
    }
}
