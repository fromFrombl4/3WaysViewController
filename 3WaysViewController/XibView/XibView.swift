//
//  XibView.swift
//  3WaysViewController
//
//  Created by Roman Dod on 1/19/21.
//  Copyright © 2021 Roman Dod. All rights reserved.
//

import UIKit

class XibView: UIView {

    class func instanceFromNib() -> XibView {
//        return UINib(nibName: "XibView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! XibView
        return XibView()
    }
}
