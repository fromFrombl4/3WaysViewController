//
//  ViewController.swift
//  3WaysViewController
//
//  Created by Roman Dod on 1/14/21.
//  Copyright © 2021 Roman Dod. All rights reserved.
//

import UIKit

protocol ViewControllerDelegate: AnyObject {
    func changeLabel()
}

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    weak var delegate: ViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.delegate?.changeLabel()
    }
    @IBAction func pressedStoryboardButton(_ sender: UIButton) {
        guard let controller = storyboard?
        .instantiateViewController(withIdentifier: "SoryboardViewController")
        as? SoryboardViewController else {
            return
        }
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func pressedXibButton(_ sender: UIButton) {
        let controller = XibViewController(nibName: "XibViewController", bundle: nil)
        self.navigationController?.pushViewController(controller, animated: true)

    }
    @IBAction func pressedCodeButton(_ sender: UIButton) {
        let codeController = CodeViewController()
        self.navigationController?.pushViewController(codeController, animated: true)
    }
}

extension ViewController: SoryboardViewControllerDelegate {
    func changeLabel() {
        self.myLabel.text = "back from storyboard"
    }
}
