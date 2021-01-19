//
//  SoryboardViewController.swift
//  3WaysViewController
//
//  Created by Roman Dod on 1/14/21.
//  Copyright © 2021 Roman Dod. All rights reserved.
//

import UIKit

protocol SoryboardViewControllerDelegate: AnyObject {
    func changeLabel()
}

class SoryboardViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var meButton: UIButton!
    @IBOutlet weak var myLabel: UILabel!
    weak var delegate: SoryboardViewControllerDelegate?
    var array = [
        1,
        2,
        3
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func pressedMeButton(_ sender: UIButton) {
        self.delegate?.changeLabel()
        self.textField.text = UserDefaults.standard.object(forKey: "textField") as? String
        tableView.reloadData()
    }
}

extension SoryboardViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView
            .dequeueReusableCell(withIdentifier: "SoryboardTableViewCell")
            as? SoryboardTableViewCell else {
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

extension SoryboardViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
    }
}
extension SoryboardViewController: ViewControllerDelegate {
    func changeLabel() {
        self.myLabel.text = "storyboard VC"
    }
}
