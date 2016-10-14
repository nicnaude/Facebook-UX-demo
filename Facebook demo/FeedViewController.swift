//
//  FeedViewController.swift
//  Facebook demo
//
//  Created by Nicholas Naudé on 13/10/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

import UIKit

class FeedViewController: ViewController {

    @IBOutlet weak var searchField: UITextField!
    @IBOutlet weak var feedImageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.searchField.backgroundColor = UIColor(red:0.20, green:0.30, blue:0.47, alpha:1.0)
        scrollView.contentSize = feedImageView.frame.size
    
    }
}
