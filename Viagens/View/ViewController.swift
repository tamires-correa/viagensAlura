//
//  ViewController.swift
//  Viagens
//
//  Created by Tamires Corrêa on 19/10/25.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var tripTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tripTableView.dataSource = self
        tripTableView.delegate = self
    }


}



