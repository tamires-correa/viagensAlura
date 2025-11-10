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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        loadTravels()
        
        view.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1.00)
    }
    
    private func loadTravels(){
        if let viewModels = TravelService.loadTravels() {
            sections = viewModels
            tripTableView.reloadData()
        } else {
            print("Failed to load travels")
        }
    }
}
