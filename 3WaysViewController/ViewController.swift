//
//  ViewController.swift
//  3WaysViewController
//
//  Created by Roman Dod on 1/14/21.
//  Copyright © 2021 Roman Dod. All rights reserved.
//

import UIKit

struct StoryBoard {
    var label: String
}

struct Xib {
    var label: String
}

struct Code {
    var label: String
}

struct Segue {
    var label: String
}

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    private var storyBoard = StoryBoard(label: "StoryBoard")
    private var xib = Xib(label: "Xib")
    private var code = Code(label: "Code")

    @IBAction func pressedStoryboardButton(_ sender: UIButton) {
        guard let controller = storyboard?
            .instantiateViewController(withIdentifier: "SoryboardViewController")
            as? SoryboardViewController else {
                return
        }
        controller.storyBoard = storyBoard
        self.navigationController?.pushViewController(controller, animated: true)
    }

    @IBAction func pressedXibButton(_ sender: UIButton) {
        let controller = XibViewController(nibName: "XibViewController", bundle: nil)
        controller.xib = xib
        self.navigationController?.pushViewController(controller, animated: true)
    }

    @IBAction func pressedCodeButton(_ sender: UIButton) {
        let codeController = CodeViewController()
        codeController.code = code
        self.navigationController?.pushViewController(codeController, animated: true)
    }

    @IBAction func pressedSegueButton(_ sender: UIButton) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let receiverVC = segue.destination as? SegueViewController else {
            return
        }

        receiverVC.segue = Segue.init(label: "Segue")
    }

}
