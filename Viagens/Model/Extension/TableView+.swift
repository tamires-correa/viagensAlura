//
//  TableView+.swift
//  Viagens
//
//  Created by Tamires Corrêa on 19/10/25.
//

import UIKit

// MARK: - TableView Setup
extension ViewController{
    func setupTableView(){
        configureTableView()
        setupHeader()
    }
  
    private func configureTableView() {
        tripTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        tripTableView.dataSource = self
        tripTableView.delegate = self
    }
    
    private func setupHeader(){
        guard let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader else {
            return
        }
        headerView.delegate = self
        headerView.settingsHeaderView()
        headerView.frame = CGRect(x: 0, y: 0, width: tripTableView.frame.width, height: 300)
             tripTableView.tableHeaderView = headerView
        
          
    }
}
//MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sections[section].numberOfRows
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell else{
            fatalError("Error creating TableViewCell")
        }
        let viewModel = sections[indexPath.section]
        let travel = viewModel.travels[indexPath.row]
        cell.configureCell(travel)
        return cell
    }
}

//MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       print("Select trip: \(indexPath.row)")
    }
}

//MARK: - HomeTableViewHeaderDelegate
extension ViewController: HomeTableViewHeaderDelegate{
    func didSelectFilter(_ filter: FilterType) {
        print("Filtro selecionado:", filter)
    }

    func didSelectSort(_ sort: SortType) {
        print("Ordenação selecionada:", sort)
    }
}

