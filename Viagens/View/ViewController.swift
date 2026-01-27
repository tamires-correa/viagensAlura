//
//  ViewController.swift
//  Viagens
//
//  Created by Tamires Corrêa on 19/10/25.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var tripTableView: UITableView!
    
    var sections: [TravelViewModel] = []
    var allSections: [TravelViewModel] = []
    var selectedFilter: FilterType = .all
    var selectedSort: SortType = .lowPrice
    var headerView: HomeTableViewHeader?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        loadTravels()
        
        view.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1.00)
    }
    
    private func loadTravels(){
        if let viewModels = TravelService.loadTravels() {
            allSections = viewModels
            applyFilterAndSort()
        } else {
            print("Failed to load travels")
        }
    }
    
    func applyFilterAndSort(){
        sections = TripFilterAndSort.processSections(allSections: allSections, filter: selectedFilter, sort: selectedSort)
            tripTableView.reloadData()
        headerView?.updateFilterMenu(currentFilter: selectedFilter)
        headerView?.updateSortMenu(currentSort: selectedSort)
    }
}
