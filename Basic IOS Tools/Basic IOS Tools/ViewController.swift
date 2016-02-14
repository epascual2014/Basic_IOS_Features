
//
//  ViewController.swift
//  Basic IOS Tools
//
//  Created by Edrick Pascual on 2/13/16.
//  Copyright (c) 2016 Edrick Pascual. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    
    @IBOutlet weak var sideBarMenuOpen: UIBarButtonItem!
    
    var varView = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        sideBarMenuOpen.target = self.revealViewController()
        
        // Will call selector located in the SWReveal File
        sideBarMenuOpen.action = Selector("revealToggle:")
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        if (varView == 0){
            
            testLabel.text = "Labels Test"
            
        } else {
            
            testLabel.text = "Others"
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

