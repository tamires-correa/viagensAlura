//
//  TableView+.swift
//  Viagens
//
//  Created by Tamires Corrêa on 19/10/25.
//

import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Settings TableView
    func settingsTableView() {
        tripTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        tripTableView.dataSource = self
        tripTableView.delegate = self
        
    // MARK: - Header
        if let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader {
             headerView.settingsHeaderView()
             headerView.frame = CGRect(x: 0, y: 0, width: tripTableView.frame.width, height: 300)
             tripTableView.tableHeaderView = headerView
         }
    }
    
   //MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let tripCell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") else {
            fatalError("Error to create TableViewCell")
        }
        
        return tripCell
    }
    
    //MARK: - UITableViewDelegate (Cell)
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}
