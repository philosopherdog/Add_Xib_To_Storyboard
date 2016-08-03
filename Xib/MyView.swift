//
//  MyView.swift
//  Xib
//
//  Created by steve on 2016-08-03.
//  Copyright © 2016 steve. All rights reserved.
//

import UIKit

class MyView: UIView {

    @IBOutlet weak var button: UIButton! {
        didSet {
            button.addTarget(viewController, action: #selector(ViewController.buttonTapped), forControlEvents: .TouchUpInside)
        }
    }
    
    weak var viewController:ViewController!

}
