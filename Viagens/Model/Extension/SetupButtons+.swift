//
//  SetupButtons+.swift
//  Viagens
//
//  Created by Tamires Corrêa on 22/12/25.
//

import UIKit

extension HomeTableViewHeader{
    
    func setupButtons(){
        setupFilterButton()
        setupSortButton()
    }
    
//MARK: Filter Update
    func updateFilterMenu(currentFilter: FilterType){
        let actions = FilterType.allCases.map{filter in
            let isSelected = (filter == currentFilter)
            return UIAction(title: filter.title, state: isSelected ? .on : .off) { [weak self] _ in self?.delegate?.didSelectFilter(filter)
            }
        }
        
        let menu = UIMenu(title: "", children: actions)
        filterButton.menu = menu
    }

//MARK: Sort Update
    func updateSortMenu(currentSort: SortType){
        let actions = SortType.allCases.map{sort in
            let isSelected = (sort == currentSort)
            return UIAction(title: sort.title, state: isSelected ? .on : .off) { [weak self] _ in self?.delegate?.didSelectSort(sort)
            }
        }
    
        let menu = UIMenu(title: "Ordenar", children: actions)
        sortButton.menu = menu
    }
    
//MARK: Initial Setup
    private func setupFilterButton(){
        var settings = UIButton.Configuration.plain()
        settings.image = UIImage(systemName: "line.3.horizontal.decrease")
        settings.baseForegroundColor = .black
        settings.background.backgroundColor = .systemGray5
        
        filterButton.configuration = settings
        filterButton.showsMenuAsPrimaryAction = true
        
        updateFilterMenu(currentFilter: .all)
    }
    
    
    private func setupSortButton(){
        sortButton.showsMenuAsPrimaryAction = true
        
        updateSortMenu(currentSort: .lowPrice)
    }
}
