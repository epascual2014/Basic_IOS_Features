
//
//  ViewController.swift
//  Basic IOS Tools
//
//  Created by Edrick Pascual on 2/13/16.
//  Copyright (c) 2016 Edrick Pascual. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sideBarMenuOpen: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        sideBarMenuOpen.target = self.revealViewController()
        
        // Will call selector located in the SWReveal File
        sideBarMenuOpen.action = Selector("revealToggle:")
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

