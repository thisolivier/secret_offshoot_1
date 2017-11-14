//
//  ViewController.swift
//  Five
//
//  Created by Kamal Popat on 11/12/2016.
//  Copyright © 2016 Arkera. All rights reserved.
//

import UIKit

/* 5. Build the view in Five.pdf by making use of Auto Layout in Main.storyboard and completing this view controller.
 
 Notes: 
 1. An item icon and count label should be hidden if the item count = 0
 2. As per Five.pdf, the set of visible icon+labels should remain centered in the view
 
 Optional: 
 Consider how the icons might be displayed if the visible set doesn't fit the width of the screen

 */

class ViewController: UIViewController {

    var musicCount: Int = 1
    var videoCount: Int = 3
    var photoCount: Int = 2

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

