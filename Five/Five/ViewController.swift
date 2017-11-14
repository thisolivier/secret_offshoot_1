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
 // Have to go, but would set listener for width failure
 // On width failure, use a vertical stack, or break one item onto new line, or show '...' for toggle.

 */

class ViewController: UIViewController {

    var musicCount: Int = 1
    var videoCount: Int = 3
    var photoCount: Int = 2

    @IBOutlet weak var videoCounterOutlet: UILabel!
    @IBOutlet weak var musicCounterOutlet: UILabel!
    @IBOutlet weak var imageCounterOutlet: UILabel!
    @IBOutlet weak var musicViewOutlet: UIView!
    @IBOutlet weak var videoViewOutlet: UIView!
    @IBOutlet weak var imageViewOutlet: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let counters = [musicCounterOutlet, videoCounterOutlet, imageCounterOutlet]
        let inputs = [musicCount, videoCount, photoCount]
        let views = [musicViewOutlet, videoViewOutlet, imageViewOutlet]
        
        for index in 0...2{
            if inputs[index] == 0 {
                views[index]?.isHidden = true
            } else {
                counters[index]?.text = String(inputs[index])
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

