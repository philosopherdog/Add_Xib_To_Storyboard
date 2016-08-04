//
//  MyView.swift
//  Xib
//
//  Created by steve on 2016-08-03.
//  Copyright © 2016 steve. All rights reserved.
//

import UIKit

class MyView: UIView {
    
    var buttonHandler:((sender:UIButton)->())!

    @IBAction func buttonTapped(sender: UIButton) {
        buttonHandler(sender:sender)
    }
}
