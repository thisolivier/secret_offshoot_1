//
//  ViewController.swift
//  Four
//
//  Created by Kamal Popat on 11/12/2016.
//  Copyright © 2016 Arkera. All rights reserved.
//



import UIKit

/* 4. Use Main.storyboard and this view controller to build the
 @IBOutlet weak var imageOutlet: UIImageView!
 view in Four.pdf. Consider how your solution might scale for an increased amount of content.
 */

class richTableViewCellController : UITableViewCell {
    

    @IBOutlet weak var textOutlet: UILabel!
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var decorativeLineOutlet: UIView!
    
}

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableViewOutlet: UITableView!
    
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
        tableViewOutlet.dataSource = self
    }
    
    // Functions to setup table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (descriptions != nil) ? descriptions!.count : 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellTemplate = tableView.dequeueReusableCell(withIdentifier: "richTableViewCell") as? richTableViewCellController
        cellTemplate?.textOutlet?.text = descriptions![indexPath.row]
        do {
            var image:UIImage
            try image = images![indexPath.row]
            let imageOutlet = cellTemplate?.imageOutlet
            imageOutlet?.image = image
            imageOutlet?.layer.cornerRadius = 8
            imageOutlet?.clipsToBounds = true
        }
        if (indexPath.row == descriptions!.count - 1){
            cellTemplate?.decorativeLineOutlet.isHidden = true
        }
        return cellTemplate!
    }
}

