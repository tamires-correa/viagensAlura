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
        let actions = FilterType.allCases.map { filter in UIAction(title: filter.rawValue) { [weak self] _ in self?.delegate?.didSelectFilter(filter)
        }
        }
        
        let menu = UIMenu(title: "", children: actions)
        
        filterButton.menu = menu
        filterButton.showsMenuAsPrimaryAction = true
        
        let image = UIImage(systemName: "line.3.horizontal.decrease")
        filterButton.setImage(image, for: .normal)
    }
    
    
    private func setupSortButton(){
        let actions = SortType.allCases.map { sort in UIAction(title: sort.rawValue) { [weak self] _ in self?.delegate?.didSelectSort(sort)
        }
        }
        let menu = UIMenu(title: "Ordenar", children: actions)
        
        sortButton.menu = menu
        sortButton.showsMenuAsPrimaryAction = true
    }
}
