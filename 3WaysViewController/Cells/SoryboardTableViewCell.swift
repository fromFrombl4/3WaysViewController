//
//  SoryboardTableViewCell.swift
//  3WaysViewController
//
//  Created by Roman Dod on 1/14/21.
//  Copyright © 2021 Roman Dod. All rights reserved.
//

import UIKit

class SoryboardTableViewCell: UITableViewCell {

    @IBOutlet weak var soryboardLabel: UILabel!
    @IBOutlet weak var soryboardButton: UIButton!
    @IBOutlet weak var cellImageView: UIImageView!

    func configure(with text: Int) {
        self .soryboardLabel.text = "\(text)"
    }

    @IBAction func pressedSoryboardButton(_ sender: UIButton) {
        Manager.shared.getImage(endPoint: "photos")
    }
}
