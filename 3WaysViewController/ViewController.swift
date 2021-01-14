//
//  ViewController.swift
//  3WaysViewController
//
//  Created by Roman Dod on 1/14/21.
//  Copyright © 2021 Roman Dod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func pressedStoryboardButton(_ sender: UIButton) {
        
        guard let controller = storyboard?.instantiateViewController(withIdentifier: "SoryboardViewController") as? SoryboardViewController else {
            return
        }
        
        self.navigationController?.pushViewController(controller, animated: true)
    }
    

}

extension ViewController: SoryboardTableViewCellDelegate {
    func changeLabel() {
        self.myLabel.text = UserDefaults.standard.string(forKey: "textField")
    }
}
