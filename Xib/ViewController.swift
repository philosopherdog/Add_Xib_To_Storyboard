//
//  ViewController.swift
//  Xib
//
//  Created by steve on 2016-08-03.
//  Copyright © 2016 steve. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customView: MyView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.customView = NSBundle.mainBundle().loadNibNamed("MyView", owner: self, options: nil)[0] as! MyView
        self.view.addSubview(customView)
        customView.viewController = self
    }
    
    override func viewDidLayoutSubviews() {
        self.customView.frame = self.view.frame
    }
    
    // button method passed to view controller
    func buttonTapped(button:UIButton) {
        
    }
}

