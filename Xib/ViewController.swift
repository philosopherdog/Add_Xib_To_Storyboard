//
//  ViewController.swift
//  Xib
//
//  Created by steve on 2016-08-03.
//  Copyright © 2016 steve. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    weak var customView: MyView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.customView = NSBundle.mainBundle().loadNibNamed("MyView", owner: self, options: nil)[0] as! MyView
        self.view.addSubview(customView)
        addButtonHandlerForCustomView()
    }
    
    private func addButtonHandlerForCustomView() {
        customView.buttonHandler = {
            [weak self] (sender:UIButton) in
            guard let welf = self else {
                return
            }
            welf.buttonTapped(sender)
        }
    }
    
    override func viewDidLayoutSubviews() {
        self.customView.frame = self.view.frame
    }
    
    
    private func buttonTapped(button:UIButton) {
        
    }
}

