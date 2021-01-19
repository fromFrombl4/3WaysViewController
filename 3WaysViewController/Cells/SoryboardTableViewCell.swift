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
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func configure(with text: Int) {
        self .soryboardLabel.text = "\(text)"
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    @IBAction func pressedSoryboardButton(_ sender: UIButton) {
        Manager.shared.getImage(endPoint: "photos")
    }
}
