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
    
    private func setupFilterButton(){
        let actions = FilterType.allCases.map { filter in UIAction(title: filter.title) { [weak self] _ in self?.delegate?.didSelectFilter(filter)
        }
        }
        
        let menu = UIMenu(title: "", children: actions)
        
        filterButton.menu = menu
        filterButton.showsMenuAsPrimaryAction = true
        
        var settings = UIButton.Configuration.plain()
        settings.image = UIImage(systemName: "line.3.horizontal.decrease")
        settings.baseForegroundColor = .black
        settings.background.backgroundColor = .systemGray5
        
        filterButton.configuration = settings
    }
    
    
    private func setupSortButton(){
        let actions = SortType.allCases.map { sort in UIAction(title: sort.title) { [weak self] _ in self?.delegate?.didSelectSort(sort)
        }
        }
        let menu = UIMenu(title: "Ordenar", children: actions)
        
        sortButton.menu = menu
        sortButton.showsMenuAsPrimaryAction = true
    }
}
