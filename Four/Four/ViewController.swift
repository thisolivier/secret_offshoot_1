//
//  ViewController.swift
//  Four
//
//  Created by Kamal Popat on 11/12/2016.
//  Copyright © 2016 Arkera. All rights reserved.
//



import UIKit

/* 4. Use Main.storyboard and this view controller to build the view in Four.pdf. Consider how your solution might scale for an increased amount of content.
 */

class ViewController: UIViewController {

    var images: [UIImage]? {
        let first = UIImage(named: "apple_one")!
        let second = UIImage(named: "apple_two")!
        let third = UIImage(named: "apple_three")!
        return [first,second,third]
    }

    var descriptions: [String]? {
        let first = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ac aliquet sem, a mattis urna."
        let second = "In pulvinar neque sed turpis volutpat, in sodales arcu pharetra."
        let third = "Duis euismod dignissim fringilla. Quisque posuere massa eros, vitae mattis justo rhoncus eget. Maecenas nec felis nulla."
        return [first,second,third]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

