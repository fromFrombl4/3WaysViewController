//
//  XibViewController.swift
//  3WaysViewController
//
//  Created by Roman Dod on 1/18/21.
//  Copyright © 2021 Roman Dod. All rights reserved.
//

import UIKit

class XibViewController: UIViewController {

    
    var array = [
        1,
        2,
        3
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
//    class func instanceFromNib() -> XibViewController {
//        return UINib(nibName: "XibViewController", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! XibViewController
//    }
    
}

extension XibViewController: UITableViewDelegate, UITableViewDataSource {
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
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        self.navigationController?.popViewController(animated: true)
    }
}
