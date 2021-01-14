//
//  SoryboardViewController.swift
//  3WaysViewController
//
//  Created by Roman Dod on 1/14/21.
//  Copyright © 2021 Roman Dod. All rights reserved.
//

import UIKit

class SoryboardViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var array = [
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
}

extension SoryboardViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SoryboardTableViewCell") as? SoryboardTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(with: array[indexPath.row])
        return cell
    }
    
    
}
